
<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
<title>k-means clustering</title>
<meta  http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta  name="generator" content="Org-mode" />
<style type="text/css">
 <!--/*--><![CDATA[/*><!--*/
  .title  { text-align: center; }
  .todo   { font-family: monospace; color: red; }
  .done   { color: green; }
  .tag    { background-color: #eee; font-family: monospace;
            padding: 2px; font-size: 80%; font-weight: normal; }
  .timestamp { color: #bebebe; }
  .timestamp-kwd { color: #5f9ea0; }
  .right  { margin-left: auto; margin-right: 0px;  text-align: right; }
  .left   { margin-left: 0px;  margin-right: auto; text-align: left; }
  .center { margin-left: auto; margin-right: auto; text-align: center; }
  .underline { text-decoration: underline; }
  #postamble p, #preamble p { font-size: 90%; margin: .2em; }
  p.verse { margin-left: 3%; }
  pre {
    border: 1px solid #ccc;
    box-shadow: 3px 3px 3px #eee;
    padding: 8pt;
    font-family: monospace;
    overflow: auto;
    margin: 1.2em;
  }
  pre.src {
    position: relative;
    overflow: visible;
    padding-top: 1.2em;
  }
  pre.src:before {
    display: none;
    position: absolute;
    background-color: white;
    top: -10px;
    right: 10px;
    padding: 3px;
    border: 1px solid black;
  }
  pre.src:hover:before { display: inline;}
  pre.src-sh:before    { content: 'sh'; }
  pre.src-bash:before  { content: 'sh'; }
  pre.src-emacs-lisp:before { content: 'Emacs Lisp'; }
  pre.src-R:before     { content: 'R'; }
  pre.src-perl:before  { content: 'Perl'; }
  pre.src-java:before  { content: 'Java'; }
  pre.src-sql:before   { content: 'SQL'; }

  table { border-collapse:collapse; }
  caption.t-above { caption-side: top; }
  caption.t-bottom { caption-side: bottom; }
  td, th { vertical-align:top;  }
  th.right  { text-align: center;  }
  th.left   { text-align: center;   }
  th.center { text-align: center; }
  td.right  { text-align: right;  }
  td.left   { text-align: left;   }
  td.center { text-align: center; }
  dt { font-weight: bold; }
  .footpara:nth-child(2) { display: inline; }
  .footpara { display: block; }
  .footdef  { margin-bottom: 1em; }
  .figure { padding: 1em; }
  .figure p { text-align: center; }
  .inlinetask {
    padding: 10px;
    border: 2px solid gray;
    margin: 10px;
    background: #ffffcc;
  }
  #org-div-home-and-up
   { text-align: right; font-size: 70%; white-space: nowrap; }
  textarea { overflow-x: auto; }
  .linenr { font-size: smaller }
  .code-highlighted { background-color: #ffff00; }
  .org-info-js_info-navigation { border-style: none; }
  #org-info-js_console-label
    { font-size: 10px; font-weight: bold; white-space: nowrap; }
  .org-info-js_search-highlight
    { background-color: #ffff00; color: #000000; font-weight: bold; }
  /*]]>*/-->
</style>


</head>
<body>
<div id="content">
<h1 class="title">k-means clustering</h1>

<div class="summary"><h2>Introduction</h2>
<p>
Clustering is used for finding groups or "clusters" of data for which 
the true groups/labels are unknown. k-means is an iterative algorithm 
which assigns cluster "centroids"(an average of the points that make up a cluster)
 and then reassigns points to the new cluster-centroids. The algorithm stops when points
don't change their cluster assignments. k-means requires deciding upfront the value of &kappa;.
</p>

<p>
In current project I use k-means clustering method to find relations between different properties of flowers species from famous "iris" dataset which is available from <a href="http://archive.ics.uci.edu/ml/datasets/Iris">UCI</a>. We want to know if there are more than one distinct kinds of iris plants represented in this data. In other words, we want to classify each measured flower as some species of iris. But we don't know, a
priori, which points belong in which groups.
</p>

</div>
</div>
<div id="outline-container-sec-2" class="outline-2">
<h2 id="sec-2">k-means clustering</h2>
<div class="outline-text-2" id="text-2">
<p>
The k-means algorithm is the simplest and most intuitive. It works as
follows.
</p>

<ol class="org-ol">
<li>Decide how many clusters we want. Call this &kappa;. (Because we have
to choose &kappa;, this method is "semi-supervised" rather than
wholly "unsupervised.")
</li>

<li>Select X-Variable for the graph it should be only be one of the four criteria(Sepal length, Sepal width, Petal length or Petal width only )
</li>

<li>Select Y-Variable for the graph it should be only be one of the four criteria(Sepal length, Sepal width, Petal length or Petal width only )
</li>

<li>Now all flowers will be assigned (or reassigned) to a
clusters, recalculate the cluster means. This simply involves
summing all data vectors in the cluster and dividing by the
number of members in the cluster.
</li>

<li>Go back to step 1 to 3 for a different selection.
</li>
</ol>
<p>
The result is each flower (each row in the table) is assigned to a
cluster. We graph these clusters with centroid in different color.
Unfortunately, these clusters are not entirely accurate. But the intent here is to demonstrate use of Shiny application.
</p>
<p>
For further details on k-means clustering please check out the Wikipedia article at <a href="http://en.wikipedia.org/wiki/K-means_clustering "> k-means Clustering </a>
</p>
</body>
</html>

