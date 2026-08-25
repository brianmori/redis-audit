# List all available recipes
default:
    @just --list

# Lint and format check
check:
    uv run ruff check src/ tests/
    uv run ruff format --check src/ tests/
    uv run mypy src/ tests/

# Auto-fix everything
fix:
    uv run ruff check --fix --show-fixes src/ tests/
    uv run ruff format src/ tests/

# Run non-live tests
test:
    uv run pytest -m "unit or integration" --cov --cov-report=term-missing -v

# Mypy check
typecheck:
    uv run mypy src/ tests/

# Build the library for distribution
build:
    uv build

# Clean up caches
clean:
    rm -rf .pytest_cache .ruff_cache dist/
