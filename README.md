
<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
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

