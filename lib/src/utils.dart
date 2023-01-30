String paginatedToString(bool paginated) => paginated ? 'yes' : '';

String includeCommentsToString(bool comments) => comments ? '1' : '0';

String concatStringList(List<String> list) => list.join(',');
