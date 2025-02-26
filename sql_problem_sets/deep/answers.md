# From the Deep

In this problem, you'll write freeform responses to the questions provided in the specification.

## Random Partitioning

Benefit: One advantage is that it prevents a single boat from being overwhelmed with too much data, reducing bottlenecks and ensuring a balanced workload across all boats.
Disadvantage: However, a drawback is that retrieving relevant data takes more time since it is evenly distributed among all boats. Additionally, if one boat goes offline, any data stored on it may become temporarily inaccessible.

## Partitioning by Hour

Benefit: A key advantage of this approach is that searching for data is more efficient since observations are stored based on time, reducing the need to query multiple boats. Additionally, there is a lower risk of data fragmentation across different boats.

Disadvantage: However, a major drawback is that one boat may become overwhelmed with significantly more data if observations are not evenly distributed throughout the day. This can lead to performance slowdowns and potential system bottlenecks.
## Partitioning by Hash Value

Benefit: Hash partitioning prevents a single boat from being overwhelmed with too much data, ensuring a balanced workload and reducing bottlenecks. Unlike random partitioning, researchers can use the hash function to determine exactly where a specific observation is stored, making individual lookups more efficient.
Disadvantage: However, a drawback is that retrieving a range of observations takes more time, as the data is evenly distributed across all boats, requiring queries to run on all of them. Additionally, if one boat goes offline, any data stored on it may become temporarily inaccessible, making data retrieval incomplete until the issue is resolved.
