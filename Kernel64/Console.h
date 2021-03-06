#pragma once

#define _str2(s) #s
#define _str(s) _str2(s)
#define AT "[" __FUNCTION__ "] " __FILE__ ":" _str(__LINE__)

#define TRACELN(msg) TRACE(msg "\n")
#define TRACE(msg) console_write(AT "  " msg)

void console_init(int32_t X, int32_t Y);
void console_write(const char* Str);
void console_writehex(int32_t Num);
void console_writedec(int32_t Num);