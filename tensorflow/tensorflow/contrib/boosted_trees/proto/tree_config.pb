
�
8tensorflow/contrib/boosted_trees/proto/tree_config.prototensorflow.boosted_trees.trees"�
TreeNode:
leaf (2$.tensorflow.boosted_trees.trees.LeafH Rleafp
dense_float_binary_split (25.tensorflow.boosted_trees.trees.DenseFloatBinarySplitH RdenseFloatBinarySplit�
&sparse_float_binary_split_default_left (2A.tensorflow.boosted_trees.trees.SparseFloatBinarySplitDefaultLeftH R!sparseFloatBinarySplitDefaultLeft�
'sparse_float_binary_split_default_right (2B.tensorflow.boosted_trees.trees.SparseFloatBinarySplitDefaultRightH R"sparseFloatBinarySplitDefaultRighty
categorical_id_binary_split (28.tensorflow.boosted_trees.trees.CategoricalIdBinarySplitH RcategoricalIdBinarySplit�
*categorical_id_set_membership_binary_split (2E.tensorflow.boosted_trees.trees.CategoricalIdSetMembershipBinarySplitH R%categoricalIdSetMembershipBinarySplitV
node_metadata� (20.tensorflow.boosted_trees.trees.TreeNodeMetadataRnodeMetadataB
node"q
TreeNodeMetadata
gain (RgainI
original_leaf (2$.tensorflow.boosted_trees.trees.LeafRoriginalLeaf"�
Leaf@
vector (2&.tensorflow.boosted_trees.trees.VectorH RvectorS
sparse_vector (2,.tensorflow.boosted_trees.trees.SparseVectorH RsparseVectorB
leaf"
Vector
value (Rvalue":
SparseVector
index (Rindex
value (Rvalue"�
DenseFloatBinarySplit%
feature_column (RfeatureColumn
	threshold (R	threshold
left_id (RleftId
right_id (RrightId"p
!SparseFloatBinarySplitDefaultLeftK
split (25.tensorflow.boosted_trees.trees.DenseFloatBinarySplitRsplit"q
"SparseFloatBinarySplitDefaultRightK
split (25.tensorflow.boosted_trees.trees.DenseFloatBinarySplitRsplit"�
CategoricalIdBinarySplit%
feature_column (RfeatureColumn

feature_id (R	featureId
left_id (RleftId
right_id (RrightId"�
%CategoricalIdSetMembershipBinarySplit%
feature_column (RfeatureColumn
feature_ids (R
featureIds
left_id (RleftId
right_id (RrightId"T
DecisionTreeConfig>
nodes (2(.tensorflow.boosted_trees.trees.TreeNodeRnodes"�
DecisionTreeMetadata5
num_tree_weight_updates (RnumTreeWeightUpdates(
num_layers_grown (RnumLayersGrown!
is_finalized (RisFinalized"�
DecisionTreeEnsembleConfigH
trees (22.tensorflow.boosted_trees.trees.DecisionTreeConfigRtrees!
tree_weights (RtreeWeightsY
tree_metadata (24.tensorflow.boosted_trees.trees.DecisionTreeMetadataRtreeMetadataB�bproto3