#!/bin/bash

# deploy.sh - Script to handle local deployment
# Usage: ./deploy.sh [--no-commit] [source_dir] [dest_dir] [base_path]

set -e # Exit on error

# Default settings
COMMIT_CHANGES=true
SOURCE_DIR="dist"                       # Default source directory
DEST_DIR="$HOME/Git/sparanoid.com-prod" # Default destination
BASE_PATH="lab/7z"                     # Default base path
LOG_FILE="deploy-sparanoid.log"

# Parse arguments
while [[ "$#" -gt 0 ]]; do
  case $1 in
  --no-commit) COMMIT_CHANGES=false ;;
  *)
    if [ -z "$SOURCE_OVERRIDE" ]; then
      SOURCE_OVERRIDE="$1"
    elif [ -z "$DEST_OVERRIDE" ]; then
      DEST_OVERRIDE="$1"
    elif [ -z "$BASE_OVERRIDE" ]; then
      BASE_OVERRIDE="$1"
    else
      echo "Error: Unexpected argument $1"
      exit 1
    fi
    ;;
  esac
  shift
done

# Override defaults if provided
[ -n "$SOURCE_OVERRIDE" ] && SOURCE_DIR="$SOURCE_OVERRIDE"
[ -n "$DEST_OVERRIDE" ] && DEST_DIR="$DEST_OVERRIDE"
[ -n "$BASE_OVERRIDE" ] && BASE_PATH="$BASE_OVERRIDE"

# Create destination directory if it doesn't exist
mkdir -p "$DEST_DIR/site/$BASE_PATH"

# Log start with parameters used
echo "[$(date '+%Y-%m-%d %H:%M:%S')] Starting deployment" | tee -a "$LOG_FILE"
echo "Source: $SOURCE_DIR" | tee -a "$LOG_FILE"
echo "Destination: $DEST_DIR/site/$BASE_PATH" | tee -a "$LOG_FILE"
echo "Auto-commit: $([ "$COMMIT_CHANGES" = true ] && echo "enabled" || echo "disabled")" | tee -a "$LOG_FILE"

# Copy files to local directory
rsync -avz --delete --progress \
  "$SOURCE_DIR/" \
  "$DEST_DIR/site/$BASE_PATH" >>"$LOG_FILE" 2>&1

if [ $? -eq 0 ]; then
  echo "[$(date '+%Y-%m-%d %H:%M:%S')] File sync completed successfully" | tee -a "$LOG_FILE"

  # Run auto-commit if enabled
  if [ "$COMMIT_CHANGES" = true ] && [ -f "$DEST_DIR/auto-commit" ]; then
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] Running auto-commit script..." | tee -a "$LOG_FILE"
    cd "$DEST_DIR" && bash "auto-commit" >>"$LOG_FILE" 2>&1
  fi
else
  echo "[$(date '+%Y-%m-%d %H:%M:%S')] Error: File sync failed" | tee -a "$LOG_FILE"
  exit 1
fi

echo "[$(date '+%Y-%m-%d %H:%M:%S')] Deployment completed" | tee -a "$LOG_FILE"
exit 0
