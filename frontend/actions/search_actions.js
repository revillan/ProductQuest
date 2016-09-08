export const SearchConstants = {
  REQUEST_SEARCH: "REQUEST_SEARCH",
};

export const requestSearch = query => ({
  type: SearchConstants.REQUEST_SEARCH,
  query
});
