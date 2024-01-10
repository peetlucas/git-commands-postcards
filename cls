[1mdiff --git a/resources/views/postcards/index.blade.php b/resources/views/postcards/index.blade.php[m
[1mindex 2a16e9b..18c15cf 100644[m
[1m--- a/resources/views/postcards/index.blade.php[m
[1m+++ b/resources/views/postcards/index.blade.php[m
[36m@@ -27,6 +27,15 @@[m
                   <a href="#" class="text-sm font-medium text-gray-500 hover:text-gray-700">Home</a>[m
                 </div>[m
               </li>[m
[32m+[m[32m               @if(isset($postcards))[m
[32m+[m[32m                @if($postcards->currentPage() > 1)[m[41m                        [m
[32m+[m[32m                  <link rel="prev" href="{{ $postcards->previousPageUrl() }}" />[m[41m             [m
[32m+[m[32m                @endif[m
[32m+[m[41m                              [m
[32m+[m[32m                @if($postcards->hasMorePages())[m
[32m+[m[32m                  <link rel="next" href="{{ $postcards->nextPageUrl() }}" />[m[41m [m
[32m+[m[32m                @endif[m
[32m+[m[32m              @endif[m[41m [m
             </ol>[m
           </nav>[m
           <h1 class="mt-2 text-2xl font-bold leading-7 text-gray-900 sm:truncate sm:text-3xl sm:tracking-tight">Postcards index</h1>[m
