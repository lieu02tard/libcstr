// Fancy debug printer

static const char* c_red = "\033[;31m";
static const char* c_green = "\033[;32m";
static const char* c_brown = "\033[;33m";
static const char* c_blue = "\033[;34m";
static const char* c_magenta = "\033[;35m";
static const char* c_cyan = "\033[;36m";
static const char* c_reset = "\033[0m";

extern inline void print_debug(const char* title, const char* content);
extern inline void print_title(const char* title);
