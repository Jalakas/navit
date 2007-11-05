#ifndef NAVIT_COUNTRY_H
#define NAVIT_COUNTRY_H

#ifdef __cplusplus
extern "C" {
#endif

/* prototypes */
struct attr;
struct country_search;
struct item;
struct country_search *country_search_new(struct attr *search, int partial);
struct item *country_search_get_item(struct country_search *this_);
void country_search_destroy(struct country_search *this_);

#ifdef __cplusplus
}
#endif

#endif
