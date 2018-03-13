## Module AWS.AutoScaling

<p>With Application Auto Scaling, you can configure automatic scaling for your scalable AWS resources. You can use Application Auto Scaling to accomplish the following tasks:</p> <ul> <li> <p>Define scaling policies to automatically scale your AWS resources</p> </li> <li> <p>Scale your resources in response to CloudWatch alarms</p> </li> <li> <p>Schedule one-time or recurring scaling actions</p> </li> <li> <p>View the history of your scaling events</p> </li> </ul> <p>Application Auto Scaling can scale the following AWS resources:</p> <ul> <li> <p>Amazon ECS services. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-auto-scaling.html">Service Auto Scaling</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> </li> <li> <p>Amazon EC2 Spot fleets. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/fleet-auto-scaling.html">Automatic Scaling for Spot Fleet</a> in the <i>Amazon EC2 User Guide</i>.</p> </li> <li> <p>Amazon EMR clusters. For more information, see <a href="http://docs.aws.amazon.com/ElasticMapReduce/latest/ManagementGuide/emr-automatic-scaling.html">Using Automatic Scaling in Amazon EMR</a> in the <i>Amazon EMR Management Guide</i>.</p> </li> <li> <p>AppStream 2.0 fleets. For more information, see <a href="http://docs.aws.amazon.com/appstream2/latest/developerguide/autoscaling.html">Fleet Auto Scaling for Amazon AppStream 2.0</a> in the <i>Amazon AppStream 2.0 Developer Guide</i>.</p> </li> <li> <p>Provisioned read and write capacity for Amazon DynamoDB tables and global secondary indexes. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/AutoScaling.html">Managing Throughput Capacity Automatically with DynamoDB Auto Scaling</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p> </li> <li> <p>Amazon Aurora Replicas. For more information, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Aurora.Integrating.AutoScaling.html">Using Amazon Aurora Auto Scaling with Aurora Replicas</a>.</p> </li> <li> <p>Amazon SageMaker endpoints. For more information, see <a href="http://docs.aws.amazon.com/sagemaker/latest/dg/endpoint-auto-scaling.html">Automatically Scaling Amazon SageMaker Models</a>.</p> </li> </ul> <p>To configure automatic scaling for multiple resources across multiple services, use AWS Auto Scaling to create a scaling plan for your application. For more information, see <a href="http://aws.amazon.com/autoscaling">AWS Auto Scaling</a>.</p> <p>For a list of supported regions, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html#as-app_region">AWS Regions and Endpoints: Application Auto Scaling</a> in the <i>AWS General Reference</i>.</p>

#### `deleteScalingPolicy`

``` purescript
deleteScalingPolicy :: forall eff. DeleteScalingPolicyRequest -> Aff (exception :: EXCEPTION | eff) DeleteScalingPolicyResponse
```

<p>Deletes the specified Application Auto Scaling scaling policy.</p> <p>Deleting a policy deletes the underlying alarm action, but does not delete the CloudWatch alarm associated with the scaling policy, even if it no longer has an associated action.</p> <p>To create a scaling policy or update an existing one, see <a>PutScalingPolicy</a>.</p>

#### `deleteScheduledAction`

``` purescript
deleteScheduledAction :: forall eff. DeleteScheduledActionRequest -> Aff (exception :: EXCEPTION | eff) DeleteScheduledActionResponse
```

<p>Deletes the specified Application Auto Scaling scheduled action.</p>

#### `deregisterScalableTarget`

``` purescript
deregisterScalableTarget :: forall eff. DeregisterScalableTargetRequest -> Aff (exception :: EXCEPTION | eff) DeregisterScalableTargetResponse
```

<p>Deregisters a scalable target.</p> <p>Deregistering a scalable target deletes the scaling policies that are associated with it.</p> <p>To create a scalable target or update an existing one, see <a>RegisterScalableTarget</a>.</p>

#### `describeScalableTargets`

``` purescript
describeScalableTargets :: forall eff. DescribeScalableTargetsRequest -> Aff (exception :: EXCEPTION | eff) DescribeScalableTargetsResponse
```

<p>Gets information about the scalable targets in the specified namespace.</p> <p>You can filter the results using the <code>ResourceIds</code> and <code>ScalableDimension</code> parameters.</p> <p>To create a scalable target or update an existing one, see <a>RegisterScalableTarget</a>. If you are no longer using a scalable target, you can deregister it using <a>DeregisterScalableTarget</a>.</p>

#### `describeScalingActivities`

``` purescript
describeScalingActivities :: forall eff. DescribeScalingActivitiesRequest -> Aff (exception :: EXCEPTION | eff) DescribeScalingActivitiesResponse
```

<p>Provides descriptive information about the scaling activities in the specified namespace from the previous six weeks.</p> <p>You can filter the results using the <code>ResourceId</code> and <code>ScalableDimension</code> parameters.</p> <p>Scaling activities are triggered by CloudWatch alarms that are associated with scaling policies. To view the scaling policies for a service namespace, see <a>DescribeScalingPolicies</a>. To create a scaling policy or update an existing one, see <a>PutScalingPolicy</a>.</p>

#### `describeScalingPolicies`

``` purescript
describeScalingPolicies :: forall eff. DescribeScalingPoliciesRequest -> Aff (exception :: EXCEPTION | eff) DescribeScalingPoliciesResponse
```

<p>Describes the scaling policies for the specified service namespace.</p> <p>You can filter the results using the <code>ResourceId</code>, <code>ScalableDimension</code>, and <code>PolicyNames</code> parameters.</p> <p>To create a scaling policy or update an existing one, see <a>PutScalingPolicy</a>. If you are no longer using a scaling policy, you can delete it using <a>DeleteScalingPolicy</a>.</p>

#### `describeScheduledActions`

``` purescript
describeScheduledActions :: forall eff. DescribeScheduledActionsRequest -> Aff (exception :: EXCEPTION | eff) DescribeScheduledActionsResponse
```

<p>Describes the scheduled actions for the specified service namespace.</p> <p>You can filter the results using the <code>ResourceId</code>, <code>ScalableDimension</code>, and <code>ScheduledActionNames</code> parameters.</p> <p>To create a scheduled action or update an existing one, see <a>PutScheduledAction</a>. If you are no longer using a scheduled action, you can delete it using <a>DeleteScheduledAction</a>.</p>

#### `putScalingPolicy`

``` purescript
putScalingPolicy :: forall eff. PutScalingPolicyRequest -> Aff (exception :: EXCEPTION | eff) PutScalingPolicyResponse
```

<p>Creates or updates a policy for an Application Auto Scaling scalable target.</p> <p>Each scalable target is identified by a service namespace, resource ID, and scalable dimension. A scaling policy applies to the scalable target identified by those three attributes. You cannot create a scaling policy until you register the scalable target using <a>RegisterScalableTarget</a>.</p> <p>To update a policy, specify its policy name and the parameters that you want to change. Any parameters that you don't specify are not changed by this update request.</p> <p>You can view the scaling policies for a service namespace using <a>DescribeScalingPolicies</a>. If you are no longer using a scaling policy, you can delete it using <a>DeleteScalingPolicy</a>.</p>

#### `putScheduledAction`

``` purescript
putScheduledAction :: forall eff. PutScheduledActionRequest -> Aff (exception :: EXCEPTION | eff) PutScheduledActionResponse
```

<p>Creates or updates a scheduled action for an Application Auto Scaling scalable target.</p> <p>Each scalable target is identified by a service namespace, resource ID, and scalable dimension. A scheduled action applies to the scalable target identified by those three attributes. You cannot create a scheduled action until you register the scalable target using <a>RegisterScalableTarget</a>.</p> <p>To update an action, specify its name and the parameters that you want to change. If you don't specify start and end times, the old values are deleted. Any other parameters that you don't specify are not changed by this update request.</p> <p>You can view the scheduled actions using <a>DescribeScheduledActions</a>. If you are no longer using a scheduled action, you can delete it using <a>DeleteScheduledAction</a>.</p>

#### `registerScalableTarget`

``` purescript
registerScalableTarget :: forall eff. RegisterScalableTargetRequest -> Aff (exception :: EXCEPTION | eff) RegisterScalableTargetResponse
```

<p>Registers or updates a scalable target. A scalable target is a resource that Application Auto Scaling can scale out or scale in. After you have registered a scalable target, you can use this operation to update the minimum and maximum values for its scalable dimension.</p> <p>After you register a scalable target, you can create and apply scaling policies using <a>PutScalingPolicy</a>. You can view the scaling policies for a service namespace using <a>DescribeScalableTargets</a>. If you no longer need a scalable target, you can deregister it using <a>DeregisterScalableTarget</a>.</p>

#### `AdjustmentType`

``` purescript
newtype AdjustmentType
  = AdjustmentType String
```

##### Instances
``` purescript
Newtype AdjustmentType _
Generic AdjustmentType _
Show AdjustmentType
Decode AdjustmentType
Encode AdjustmentType
```

#### `Alarm`

``` purescript
newtype Alarm
  = Alarm { "AlarmName" :: ResourceId, "AlarmARN" :: ResourceId }
```

<p>Represents a CloudWatch alarm associated with a scaling policy.</p>

##### Instances
``` purescript
Newtype Alarm _
Generic Alarm _
Show Alarm
Decode Alarm
Encode Alarm
```

#### `newAlarm`

``` purescript
newAlarm :: ResourceId -> ResourceId -> Alarm
```

Constructs Alarm from required parameters

#### `newAlarm'`

``` purescript
newAlarm' :: ResourceId -> ResourceId -> ({ "AlarmName" :: ResourceId, "AlarmARN" :: ResourceId } -> { "AlarmName" :: ResourceId, "AlarmARN" :: ResourceId }) -> Alarm
```

Constructs Alarm's fields from required parameters

#### `Alarms`

``` purescript
newtype Alarms
  = Alarms (Array Alarm)
```

##### Instances
``` purescript
Newtype Alarms _
Generic Alarms _
Show Alarms
Decode Alarms
Encode Alarms
```

#### `ConcurrentUpdateException`

``` purescript
newtype ConcurrentUpdateException
  = ConcurrentUpdateException { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>Concurrent updates caused an exception, for example, if you request an update to an Application Auto Scaling resource that already has a pending update.</p>

##### Instances
``` purescript
Newtype ConcurrentUpdateException _
Generic ConcurrentUpdateException _
Show ConcurrentUpdateException
Decode ConcurrentUpdateException
Encode ConcurrentUpdateException
```

#### `newConcurrentUpdateException`

``` purescript
newConcurrentUpdateException :: ConcurrentUpdateException
```

Constructs ConcurrentUpdateException from required parameters

#### `newConcurrentUpdateException'`

``` purescript
newConcurrentUpdateException' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> ConcurrentUpdateException
```

Constructs ConcurrentUpdateException's fields from required parameters

#### `Cooldown`

``` purescript
newtype Cooldown
  = Cooldown Int
```

##### Instances
``` purescript
Newtype Cooldown _
Generic Cooldown _
Show Cooldown
Decode Cooldown
Encode Cooldown
```

#### `CustomizedMetricSpecification`

``` purescript
newtype CustomizedMetricSpecification
  = CustomizedMetricSpecification { "MetricName" :: MetricName, "Namespace" :: MetricNamespace, "Dimensions" :: NullOrUndefined (MetricDimensions), "Statistic" :: MetricStatistic, "Unit" :: NullOrUndefined (MetricUnit) }
```

<p>Configures a customized metric for a target tracking policy.</p>

##### Instances
``` purescript
Newtype CustomizedMetricSpecification _
Generic CustomizedMetricSpecification _
Show CustomizedMetricSpecification
Decode CustomizedMetricSpecification
Encode CustomizedMetricSpecification
```

#### `newCustomizedMetricSpecification`

``` purescript
newCustomizedMetricSpecification :: MetricName -> MetricNamespace -> MetricStatistic -> CustomizedMetricSpecification
```

Constructs CustomizedMetricSpecification from required parameters

#### `newCustomizedMetricSpecification'`

``` purescript
newCustomizedMetricSpecification' :: MetricName -> MetricNamespace -> MetricStatistic -> ({ "MetricName" :: MetricName, "Namespace" :: MetricNamespace, "Dimensions" :: NullOrUndefined (MetricDimensions), "Statistic" :: MetricStatistic, "Unit" :: NullOrUndefined (MetricUnit) } -> { "MetricName" :: MetricName, "Namespace" :: MetricNamespace, "Dimensions" :: NullOrUndefined (MetricDimensions), "Statistic" :: MetricStatistic, "Unit" :: NullOrUndefined (MetricUnit) }) -> CustomizedMetricSpecification
```

Constructs CustomizedMetricSpecification's fields from required parameters

#### `DeleteScalingPolicyRequest`

``` purescript
newtype DeleteScalingPolicyRequest
  = DeleteScalingPolicyRequest { "PolicyName" :: ResourceIdMaxLen1600, "ServiceNamespace" :: ServiceNamespace, "ResourceId" :: ResourceIdMaxLen1600, "ScalableDimension" :: ScalableDimension }
```

##### Instances
``` purescript
Newtype DeleteScalingPolicyRequest _
Generic DeleteScalingPolicyRequest _
Show DeleteScalingPolicyRequest
Decode DeleteScalingPolicyRequest
Encode DeleteScalingPolicyRequest
```

#### `newDeleteScalingPolicyRequest`

``` purescript
newDeleteScalingPolicyRequest :: ResourceIdMaxLen1600 -> ResourceIdMaxLen1600 -> ScalableDimension -> ServiceNamespace -> DeleteScalingPolicyRequest
```

Constructs DeleteScalingPolicyRequest from required parameters

#### `newDeleteScalingPolicyRequest'`

``` purescript
newDeleteScalingPolicyRequest' :: ResourceIdMaxLen1600 -> ResourceIdMaxLen1600 -> ScalableDimension -> ServiceNamespace -> ({ "PolicyName" :: ResourceIdMaxLen1600, "ServiceNamespace" :: ServiceNamespace, "ResourceId" :: ResourceIdMaxLen1600, "ScalableDimension" :: ScalableDimension } -> { "PolicyName" :: ResourceIdMaxLen1600, "ServiceNamespace" :: ServiceNamespace, "ResourceId" :: ResourceIdMaxLen1600, "ScalableDimension" :: ScalableDimension }) -> DeleteScalingPolicyRequest
```

Constructs DeleteScalingPolicyRequest's fields from required parameters

#### `DeleteScalingPolicyResponse`

``` purescript
newtype DeleteScalingPolicyResponse
  = DeleteScalingPolicyResponse NoArguments
```

##### Instances
``` purescript
Newtype DeleteScalingPolicyResponse _
Generic DeleteScalingPolicyResponse _
Show DeleteScalingPolicyResponse
Decode DeleteScalingPolicyResponse
Encode DeleteScalingPolicyResponse
```

#### `DeleteScheduledActionRequest`

``` purescript
newtype DeleteScheduledActionRequest
  = DeleteScheduledActionRequest { "ServiceNamespace" :: ServiceNamespace, "ScheduledActionName" :: ResourceIdMaxLen1600, "ResourceId" :: ResourceIdMaxLen1600, "ScalableDimension" :: NullOrUndefined (ScalableDimension) }
```

##### Instances
``` purescript
Newtype DeleteScheduledActionRequest _
Generic DeleteScheduledActionRequest _
Show DeleteScheduledActionRequest
Decode DeleteScheduledActionRequest
Encode DeleteScheduledActionRequest
```

#### `newDeleteScheduledActionRequest`

``` purescript
newDeleteScheduledActionRequest :: ResourceIdMaxLen1600 -> ResourceIdMaxLen1600 -> ServiceNamespace -> DeleteScheduledActionRequest
```

Constructs DeleteScheduledActionRequest from required parameters

#### `newDeleteScheduledActionRequest'`

``` purescript
newDeleteScheduledActionRequest' :: ResourceIdMaxLen1600 -> ResourceIdMaxLen1600 -> ServiceNamespace -> ({ "ServiceNamespace" :: ServiceNamespace, "ScheduledActionName" :: ResourceIdMaxLen1600, "ResourceId" :: ResourceIdMaxLen1600, "ScalableDimension" :: NullOrUndefined (ScalableDimension) } -> { "ServiceNamespace" :: ServiceNamespace, "ScheduledActionName" :: ResourceIdMaxLen1600, "ResourceId" :: ResourceIdMaxLen1600, "ScalableDimension" :: NullOrUndefined (ScalableDimension) }) -> DeleteScheduledActionRequest
```

Constructs DeleteScheduledActionRequest's fields from required parameters

#### `DeleteScheduledActionResponse`

``` purescript
newtype DeleteScheduledActionResponse
  = DeleteScheduledActionResponse NoArguments
```

##### Instances
``` purescript
Newtype DeleteScheduledActionResponse _
Generic DeleteScheduledActionResponse _
Show DeleteScheduledActionResponse
Decode DeleteScheduledActionResponse
Encode DeleteScheduledActionResponse
```

#### `DeregisterScalableTargetRequest`

``` purescript
newtype DeregisterScalableTargetRequest
  = DeregisterScalableTargetRequest { "ServiceNamespace" :: ServiceNamespace, "ResourceId" :: ResourceIdMaxLen1600, "ScalableDimension" :: ScalableDimension }
```

##### Instances
``` purescript
Newtype DeregisterScalableTargetRequest _
Generic DeregisterScalableTargetRequest _
Show DeregisterScalableTargetRequest
Decode DeregisterScalableTargetRequest
Encode DeregisterScalableTargetRequest
```

#### `newDeregisterScalableTargetRequest`

``` purescript
newDeregisterScalableTargetRequest :: ResourceIdMaxLen1600 -> ScalableDimension -> ServiceNamespace -> DeregisterScalableTargetRequest
```

Constructs DeregisterScalableTargetRequest from required parameters

#### `newDeregisterScalableTargetRequest'`

``` purescript
newDeregisterScalableTargetRequest' :: ResourceIdMaxLen1600 -> ScalableDimension -> ServiceNamespace -> ({ "ServiceNamespace" :: ServiceNamespace, "ResourceId" :: ResourceIdMaxLen1600, "ScalableDimension" :: ScalableDimension } -> { "ServiceNamespace" :: ServiceNamespace, "ResourceId" :: ResourceIdMaxLen1600, "ScalableDimension" :: ScalableDimension }) -> DeregisterScalableTargetRequest
```

Constructs DeregisterScalableTargetRequest's fields from required parameters

#### `DeregisterScalableTargetResponse`

``` purescript
newtype DeregisterScalableTargetResponse
  = DeregisterScalableTargetResponse NoArguments
```

##### Instances
``` purescript
Newtype DeregisterScalableTargetResponse _
Generic DeregisterScalableTargetResponse _
Show DeregisterScalableTargetResponse
Decode DeregisterScalableTargetResponse
Encode DeregisterScalableTargetResponse
```

#### `DescribeScalableTargetsRequest`

``` purescript
newtype DescribeScalableTargetsRequest
  = DescribeScalableTargetsRequest { "ServiceNamespace" :: ServiceNamespace, "ResourceIds" :: NullOrUndefined (ResourceIdsMaxLen1600), "ScalableDimension" :: NullOrUndefined (ScalableDimension), "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (XmlString) }
```

##### Instances
``` purescript
Newtype DescribeScalableTargetsRequest _
Generic DescribeScalableTargetsRequest _
Show DescribeScalableTargetsRequest
Decode DescribeScalableTargetsRequest
Encode DescribeScalableTargetsRequest
```

#### `newDescribeScalableTargetsRequest`

``` purescript
newDescribeScalableTargetsRequest :: ServiceNamespace -> DescribeScalableTargetsRequest
```

Constructs DescribeScalableTargetsRequest from required parameters

#### `newDescribeScalableTargetsRequest'`

``` purescript
newDescribeScalableTargetsRequest' :: ServiceNamespace -> ({ "ServiceNamespace" :: ServiceNamespace, "ResourceIds" :: NullOrUndefined (ResourceIdsMaxLen1600), "ScalableDimension" :: NullOrUndefined (ScalableDimension), "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (XmlString) } -> { "ServiceNamespace" :: ServiceNamespace, "ResourceIds" :: NullOrUndefined (ResourceIdsMaxLen1600), "ScalableDimension" :: NullOrUndefined (ScalableDimension), "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (XmlString) }) -> DescribeScalableTargetsRequest
```

Constructs DescribeScalableTargetsRequest's fields from required parameters

#### `DescribeScalableTargetsResponse`

``` purescript
newtype DescribeScalableTargetsResponse
  = DescribeScalableTargetsResponse { "ScalableTargets" :: NullOrUndefined (ScalableTargets), "NextToken" :: NullOrUndefined (XmlString) }
```

##### Instances
``` purescript
Newtype DescribeScalableTargetsResponse _
Generic DescribeScalableTargetsResponse _
Show DescribeScalableTargetsResponse
Decode DescribeScalableTargetsResponse
Encode DescribeScalableTargetsResponse
```

#### `newDescribeScalableTargetsResponse`

``` purescript
newDescribeScalableTargetsResponse :: DescribeScalableTargetsResponse
```

Constructs DescribeScalableTargetsResponse from required parameters

#### `newDescribeScalableTargetsResponse'`

``` purescript
newDescribeScalableTargetsResponse' :: ({ "ScalableTargets" :: NullOrUndefined (ScalableTargets), "NextToken" :: NullOrUndefined (XmlString) } -> { "ScalableTargets" :: NullOrUndefined (ScalableTargets), "NextToken" :: NullOrUndefined (XmlString) }) -> DescribeScalableTargetsResponse
```

Constructs DescribeScalableTargetsResponse's fields from required parameters

#### `DescribeScalingActivitiesRequest`

``` purescript
newtype DescribeScalingActivitiesRequest
  = DescribeScalingActivitiesRequest { "ServiceNamespace" :: ServiceNamespace, "ResourceId" :: NullOrUndefined (ResourceIdMaxLen1600), "ScalableDimension" :: NullOrUndefined (ScalableDimension), "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (XmlString) }
```

##### Instances
``` purescript
Newtype DescribeScalingActivitiesRequest _
Generic DescribeScalingActivitiesRequest _
Show DescribeScalingActivitiesRequest
Decode DescribeScalingActivitiesRequest
Encode DescribeScalingActivitiesRequest
```

#### `newDescribeScalingActivitiesRequest`

``` purescript
newDescribeScalingActivitiesRequest :: ServiceNamespace -> DescribeScalingActivitiesRequest
```

Constructs DescribeScalingActivitiesRequest from required parameters

#### `newDescribeScalingActivitiesRequest'`

``` purescript
newDescribeScalingActivitiesRequest' :: ServiceNamespace -> ({ "ServiceNamespace" :: ServiceNamespace, "ResourceId" :: NullOrUndefined (ResourceIdMaxLen1600), "ScalableDimension" :: NullOrUndefined (ScalableDimension), "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (XmlString) } -> { "ServiceNamespace" :: ServiceNamespace, "ResourceId" :: NullOrUndefined (ResourceIdMaxLen1600), "ScalableDimension" :: NullOrUndefined (ScalableDimension), "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (XmlString) }) -> DescribeScalingActivitiesRequest
```

Constructs DescribeScalingActivitiesRequest's fields from required parameters

#### `DescribeScalingActivitiesResponse`

``` purescript
newtype DescribeScalingActivitiesResponse
  = DescribeScalingActivitiesResponse { "ScalingActivities" :: NullOrUndefined (ScalingActivities), "NextToken" :: NullOrUndefined (XmlString) }
```

##### Instances
``` purescript
Newtype DescribeScalingActivitiesResponse _
Generic DescribeScalingActivitiesResponse _
Show DescribeScalingActivitiesResponse
Decode DescribeScalingActivitiesResponse
Encode DescribeScalingActivitiesResponse
```

#### `newDescribeScalingActivitiesResponse`

``` purescript
newDescribeScalingActivitiesResponse :: DescribeScalingActivitiesResponse
```

Constructs DescribeScalingActivitiesResponse from required parameters

#### `newDescribeScalingActivitiesResponse'`

``` purescript
newDescribeScalingActivitiesResponse' :: ({ "ScalingActivities" :: NullOrUndefined (ScalingActivities), "NextToken" :: NullOrUndefined (XmlString) } -> { "ScalingActivities" :: NullOrUndefined (ScalingActivities), "NextToken" :: NullOrUndefined (XmlString) }) -> DescribeScalingActivitiesResponse
```

Constructs DescribeScalingActivitiesResponse's fields from required parameters

#### `DescribeScalingPoliciesRequest`

``` purescript
newtype DescribeScalingPoliciesRequest
  = DescribeScalingPoliciesRequest { "PolicyNames" :: NullOrUndefined (ResourceIdsMaxLen1600), "ServiceNamespace" :: ServiceNamespace, "ResourceId" :: NullOrUndefined (ResourceIdMaxLen1600), "ScalableDimension" :: NullOrUndefined (ScalableDimension), "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (XmlString) }
```

##### Instances
``` purescript
Newtype DescribeScalingPoliciesRequest _
Generic DescribeScalingPoliciesRequest _
Show DescribeScalingPoliciesRequest
Decode DescribeScalingPoliciesRequest
Encode DescribeScalingPoliciesRequest
```

#### `newDescribeScalingPoliciesRequest`

``` purescript
newDescribeScalingPoliciesRequest :: ServiceNamespace -> DescribeScalingPoliciesRequest
```

Constructs DescribeScalingPoliciesRequest from required parameters

#### `newDescribeScalingPoliciesRequest'`

``` purescript
newDescribeScalingPoliciesRequest' :: ServiceNamespace -> ({ "PolicyNames" :: NullOrUndefined (ResourceIdsMaxLen1600), "ServiceNamespace" :: ServiceNamespace, "ResourceId" :: NullOrUndefined (ResourceIdMaxLen1600), "ScalableDimension" :: NullOrUndefined (ScalableDimension), "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (XmlString) } -> { "PolicyNames" :: NullOrUndefined (ResourceIdsMaxLen1600), "ServiceNamespace" :: ServiceNamespace, "ResourceId" :: NullOrUndefined (ResourceIdMaxLen1600), "ScalableDimension" :: NullOrUndefined (ScalableDimension), "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (XmlString) }) -> DescribeScalingPoliciesRequest
```

Constructs DescribeScalingPoliciesRequest's fields from required parameters

#### `DescribeScalingPoliciesResponse`

``` purescript
newtype DescribeScalingPoliciesResponse
  = DescribeScalingPoliciesResponse { "ScalingPolicies" :: NullOrUndefined (ScalingPolicies), "NextToken" :: NullOrUndefined (XmlString) }
```

##### Instances
``` purescript
Newtype DescribeScalingPoliciesResponse _
Generic DescribeScalingPoliciesResponse _
Show DescribeScalingPoliciesResponse
Decode DescribeScalingPoliciesResponse
Encode DescribeScalingPoliciesResponse
```

#### `newDescribeScalingPoliciesResponse`

``` purescript
newDescribeScalingPoliciesResponse :: DescribeScalingPoliciesResponse
```

Constructs DescribeScalingPoliciesResponse from required parameters

#### `newDescribeScalingPoliciesResponse'`

``` purescript
newDescribeScalingPoliciesResponse' :: ({ "ScalingPolicies" :: NullOrUndefined (ScalingPolicies), "NextToken" :: NullOrUndefined (XmlString) } -> { "ScalingPolicies" :: NullOrUndefined (ScalingPolicies), "NextToken" :: NullOrUndefined (XmlString) }) -> DescribeScalingPoliciesResponse
```

Constructs DescribeScalingPoliciesResponse's fields from required parameters

#### `DescribeScheduledActionsRequest`

``` purescript
newtype DescribeScheduledActionsRequest
  = DescribeScheduledActionsRequest { "ScheduledActionNames" :: NullOrUndefined (ResourceIdsMaxLen1600), "ServiceNamespace" :: ServiceNamespace, "ResourceId" :: NullOrUndefined (ResourceIdMaxLen1600), "ScalableDimension" :: NullOrUndefined (ScalableDimension), "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (XmlString) }
```

##### Instances
``` purescript
Newtype DescribeScheduledActionsRequest _
Generic DescribeScheduledActionsRequest _
Show DescribeScheduledActionsRequest
Decode DescribeScheduledActionsRequest
Encode DescribeScheduledActionsRequest
```

#### `newDescribeScheduledActionsRequest`

``` purescript
newDescribeScheduledActionsRequest :: ServiceNamespace -> DescribeScheduledActionsRequest
```

Constructs DescribeScheduledActionsRequest from required parameters

#### `newDescribeScheduledActionsRequest'`

``` purescript
newDescribeScheduledActionsRequest' :: ServiceNamespace -> ({ "ScheduledActionNames" :: NullOrUndefined (ResourceIdsMaxLen1600), "ServiceNamespace" :: ServiceNamespace, "ResourceId" :: NullOrUndefined (ResourceIdMaxLen1600), "ScalableDimension" :: NullOrUndefined (ScalableDimension), "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (XmlString) } -> { "ScheduledActionNames" :: NullOrUndefined (ResourceIdsMaxLen1600), "ServiceNamespace" :: ServiceNamespace, "ResourceId" :: NullOrUndefined (ResourceIdMaxLen1600), "ScalableDimension" :: NullOrUndefined (ScalableDimension), "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (XmlString) }) -> DescribeScheduledActionsRequest
```

Constructs DescribeScheduledActionsRequest's fields from required parameters

#### `DescribeScheduledActionsResponse`

``` purescript
newtype DescribeScheduledActionsResponse
  = DescribeScheduledActionsResponse { "ScheduledActions" :: NullOrUndefined (ScheduledActions), "NextToken" :: NullOrUndefined (XmlString) }
```

##### Instances
``` purescript
Newtype DescribeScheduledActionsResponse _
Generic DescribeScheduledActionsResponse _
Show DescribeScheduledActionsResponse
Decode DescribeScheduledActionsResponse
Encode DescribeScheduledActionsResponse
```

#### `newDescribeScheduledActionsResponse`

``` purescript
newDescribeScheduledActionsResponse :: DescribeScheduledActionsResponse
```

Constructs DescribeScheduledActionsResponse from required parameters

#### `newDescribeScheduledActionsResponse'`

``` purescript
newDescribeScheduledActionsResponse' :: ({ "ScheduledActions" :: NullOrUndefined (ScheduledActions), "NextToken" :: NullOrUndefined (XmlString) } -> { "ScheduledActions" :: NullOrUndefined (ScheduledActions), "NextToken" :: NullOrUndefined (XmlString) }) -> DescribeScheduledActionsResponse
```

Constructs DescribeScheduledActionsResponse's fields from required parameters

#### `DisableScaleIn`

``` purescript
newtype DisableScaleIn
  = DisableScaleIn Boolean
```

##### Instances
``` purescript
Newtype DisableScaleIn _
Generic DisableScaleIn _
Show DisableScaleIn
Decode DisableScaleIn
Encode DisableScaleIn
```

#### `ErrorMessage`

``` purescript
newtype ErrorMessage
  = ErrorMessage String
```

##### Instances
``` purescript
Newtype ErrorMessage _
Generic ErrorMessage _
Show ErrorMessage
Decode ErrorMessage
Encode ErrorMessage
```

#### `FailedResourceAccessException`

``` purescript
newtype FailedResourceAccessException
  = FailedResourceAccessException { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>Failed access to resources caused an exception. This exception is thrown when Application Auto Scaling is unable to retrieve the alarms associated with a scaling policy due to a client error, for example, if the role ARN specified for a scalable target does not have permission to call the CloudWatch <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeAlarms.html">DescribeAlarms</a> on your behalf.</p>

##### Instances
``` purescript
Newtype FailedResourceAccessException _
Generic FailedResourceAccessException _
Show FailedResourceAccessException
Decode FailedResourceAccessException
Encode FailedResourceAccessException
```

#### `newFailedResourceAccessException`

``` purescript
newFailedResourceAccessException :: FailedResourceAccessException
```

Constructs FailedResourceAccessException from required parameters

#### `newFailedResourceAccessException'`

``` purescript
newFailedResourceAccessException' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> FailedResourceAccessException
```

Constructs FailedResourceAccessException's fields from required parameters

#### `InternalServiceException`

``` purescript
newtype InternalServiceException
  = InternalServiceException { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>The service encountered an internal error.</p>

##### Instances
``` purescript
Newtype InternalServiceException _
Generic InternalServiceException _
Show InternalServiceException
Decode InternalServiceException
Encode InternalServiceException
```

#### `newInternalServiceException`

``` purescript
newInternalServiceException :: InternalServiceException
```

Constructs InternalServiceException from required parameters

#### `newInternalServiceException'`

``` purescript
newInternalServiceException' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> InternalServiceException
```

Constructs InternalServiceException's fields from required parameters

#### `InvalidNextTokenException`

``` purescript
newtype InvalidNextTokenException
  = InvalidNextTokenException { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>The next token supplied was invalid.</p>

##### Instances
``` purescript
Newtype InvalidNextTokenException _
Generic InvalidNextTokenException _
Show InvalidNextTokenException
Decode InvalidNextTokenException
Encode InvalidNextTokenException
```

#### `newInvalidNextTokenException`

``` purescript
newInvalidNextTokenException :: InvalidNextTokenException
```

Constructs InvalidNextTokenException from required parameters

#### `newInvalidNextTokenException'`

``` purescript
newInvalidNextTokenException' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> InvalidNextTokenException
```

Constructs InvalidNextTokenException's fields from required parameters

#### `LimitExceededException`

``` purescript
newtype LimitExceededException
  = LimitExceededException { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>A per-account resource limit is exceeded. For more information, see <a href="http://docs.aws.amazon.com/ApplicationAutoScaling/latest/userguide/application-auto-scaling-limits.html">Application Auto Scaling Limits</a>.</p>

##### Instances
``` purescript
Newtype LimitExceededException _
Generic LimitExceededException _
Show LimitExceededException
Decode LimitExceededException
Encode LimitExceededException
```

#### `newLimitExceededException`

``` purescript
newLimitExceededException :: LimitExceededException
```

Constructs LimitExceededException from required parameters

#### `newLimitExceededException'`

``` purescript
newLimitExceededException' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> LimitExceededException
```

Constructs LimitExceededException's fields from required parameters

#### `MaxResults`

``` purescript
newtype MaxResults
  = MaxResults Int
```

##### Instances
``` purescript
Newtype MaxResults _
Generic MaxResults _
Show MaxResults
Decode MaxResults
Encode MaxResults
```

#### `MetricAggregationType`

``` purescript
newtype MetricAggregationType
  = MetricAggregationType String
```

##### Instances
``` purescript
Newtype MetricAggregationType _
Generic MetricAggregationType _
Show MetricAggregationType
Decode MetricAggregationType
Encode MetricAggregationType
```

#### `MetricDimension`

``` purescript
newtype MetricDimension
  = MetricDimension { "Name" :: MetricDimensionName, "Value" :: MetricDimensionValue }
```

<p>Describes the dimension of a metric.</p>

##### Instances
``` purescript
Newtype MetricDimension _
Generic MetricDimension _
Show MetricDimension
Decode MetricDimension
Encode MetricDimension
```

#### `newMetricDimension`

``` purescript
newMetricDimension :: MetricDimensionName -> MetricDimensionValue -> MetricDimension
```

Constructs MetricDimension from required parameters

#### `newMetricDimension'`

``` purescript
newMetricDimension' :: MetricDimensionName -> MetricDimensionValue -> ({ "Name" :: MetricDimensionName, "Value" :: MetricDimensionValue } -> { "Name" :: MetricDimensionName, "Value" :: MetricDimensionValue }) -> MetricDimension
```

Constructs MetricDimension's fields from required parameters

#### `MetricDimensionName`

``` purescript
newtype MetricDimensionName
  = MetricDimensionName String
```

##### Instances
``` purescript
Newtype MetricDimensionName _
Generic MetricDimensionName _
Show MetricDimensionName
Decode MetricDimensionName
Encode MetricDimensionName
```

#### `MetricDimensionValue`

``` purescript
newtype MetricDimensionValue
  = MetricDimensionValue String
```

##### Instances
``` purescript
Newtype MetricDimensionValue _
Generic MetricDimensionValue _
Show MetricDimensionValue
Decode MetricDimensionValue
Encode MetricDimensionValue
```

#### `MetricDimensions`

``` purescript
newtype MetricDimensions
  = MetricDimensions (Array MetricDimension)
```

##### Instances
``` purescript
Newtype MetricDimensions _
Generic MetricDimensions _
Show MetricDimensions
Decode MetricDimensions
Encode MetricDimensions
```

#### `MetricName`

``` purescript
newtype MetricName
  = MetricName String
```

##### Instances
``` purescript
Newtype MetricName _
Generic MetricName _
Show MetricName
Decode MetricName
Encode MetricName
```

#### `MetricNamespace`

``` purescript
newtype MetricNamespace
  = MetricNamespace String
```

##### Instances
``` purescript
Newtype MetricNamespace _
Generic MetricNamespace _
Show MetricNamespace
Decode MetricNamespace
Encode MetricNamespace
```

#### `MetricScale`

``` purescript
newtype MetricScale
  = MetricScale Number
```

##### Instances
``` purescript
Newtype MetricScale _
Generic MetricScale _
Show MetricScale
Decode MetricScale
Encode MetricScale
```

#### `MetricStatistic`

``` purescript
newtype MetricStatistic
  = MetricStatistic String
```

##### Instances
``` purescript
Newtype MetricStatistic _
Generic MetricStatistic _
Show MetricStatistic
Decode MetricStatistic
Encode MetricStatistic
```

#### `MetricType`

``` purescript
newtype MetricType
  = MetricType String
```

##### Instances
``` purescript
Newtype MetricType _
Generic MetricType _
Show MetricType
Decode MetricType
Encode MetricType
```

#### `MetricUnit`

``` purescript
newtype MetricUnit
  = MetricUnit String
```

##### Instances
``` purescript
Newtype MetricUnit _
Generic MetricUnit _
Show MetricUnit
Decode MetricUnit
Encode MetricUnit
```

#### `MinAdjustmentMagnitude`

``` purescript
newtype MinAdjustmentMagnitude
  = MinAdjustmentMagnitude Int
```

##### Instances
``` purescript
Newtype MinAdjustmentMagnitude _
Generic MinAdjustmentMagnitude _
Show MinAdjustmentMagnitude
Decode MinAdjustmentMagnitude
Encode MinAdjustmentMagnitude
```

#### `ObjectNotFoundException`

``` purescript
newtype ObjectNotFoundException
  = ObjectNotFoundException { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>The specified object could not be found. For any operation that depends on the existence of a scalable target, this exception is thrown if the scalable target with the specified service namespace, resource ID, and scalable dimension does not exist. For any operation that deletes or deregisters a resource, this exception is thrown if the resource cannot be found.</p>

##### Instances
``` purescript
Newtype ObjectNotFoundException _
Generic ObjectNotFoundException _
Show ObjectNotFoundException
Decode ObjectNotFoundException
Encode ObjectNotFoundException
```

#### `newObjectNotFoundException`

``` purescript
newObjectNotFoundException :: ObjectNotFoundException
```

Constructs ObjectNotFoundException from required parameters

#### `newObjectNotFoundException'`

``` purescript
newObjectNotFoundException' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> ObjectNotFoundException
```

Constructs ObjectNotFoundException's fields from required parameters

#### `PolicyName`

``` purescript
newtype PolicyName
  = PolicyName String
```

##### Instances
``` purescript
Newtype PolicyName _
Generic PolicyName _
Show PolicyName
Decode PolicyName
Encode PolicyName
```

#### `PolicyType`

``` purescript
newtype PolicyType
  = PolicyType String
```

##### Instances
``` purescript
Newtype PolicyType _
Generic PolicyType _
Show PolicyType
Decode PolicyType
Encode PolicyType
```

#### `PredefinedMetricSpecification`

``` purescript
newtype PredefinedMetricSpecification
  = PredefinedMetricSpecification { "PredefinedMetricType" :: MetricType, "ResourceLabel" :: NullOrUndefined (ResourceLabel) }
```

<p>Configures a predefined metric for a target tracking policy.</p>

##### Instances
``` purescript
Newtype PredefinedMetricSpecification _
Generic PredefinedMetricSpecification _
Show PredefinedMetricSpecification
Decode PredefinedMetricSpecification
Encode PredefinedMetricSpecification
```

#### `newPredefinedMetricSpecification`

``` purescript
newPredefinedMetricSpecification :: MetricType -> PredefinedMetricSpecification
```

Constructs PredefinedMetricSpecification from required parameters

#### `newPredefinedMetricSpecification'`

``` purescript
newPredefinedMetricSpecification' :: MetricType -> ({ "PredefinedMetricType" :: MetricType, "ResourceLabel" :: NullOrUndefined (ResourceLabel) } -> { "PredefinedMetricType" :: MetricType, "ResourceLabel" :: NullOrUndefined (ResourceLabel) }) -> PredefinedMetricSpecification
```

Constructs PredefinedMetricSpecification's fields from required parameters

#### `PutScalingPolicyRequest`

``` purescript
newtype PutScalingPolicyRequest
  = PutScalingPolicyRequest { "PolicyName" :: PolicyName, "ServiceNamespace" :: ServiceNamespace, "ResourceId" :: ResourceIdMaxLen1600, "ScalableDimension" :: ScalableDimension, "PolicyType" :: NullOrUndefined (PolicyType), "StepScalingPolicyConfiguration" :: NullOrUndefined (StepScalingPolicyConfiguration), "TargetTrackingScalingPolicyConfiguration" :: NullOrUndefined (TargetTrackingScalingPolicyConfiguration) }
```

##### Instances
``` purescript
Newtype PutScalingPolicyRequest _
Generic PutScalingPolicyRequest _
Show PutScalingPolicyRequest
Decode PutScalingPolicyRequest
Encode PutScalingPolicyRequest
```

#### `newPutScalingPolicyRequest`

``` purescript
newPutScalingPolicyRequest :: PolicyName -> ResourceIdMaxLen1600 -> ScalableDimension -> ServiceNamespace -> PutScalingPolicyRequest
```

Constructs PutScalingPolicyRequest from required parameters

#### `newPutScalingPolicyRequest'`

``` purescript
newPutScalingPolicyRequest' :: PolicyName -> ResourceIdMaxLen1600 -> ScalableDimension -> ServiceNamespace -> ({ "PolicyName" :: PolicyName, "ServiceNamespace" :: ServiceNamespace, "ResourceId" :: ResourceIdMaxLen1600, "ScalableDimension" :: ScalableDimension, "PolicyType" :: NullOrUndefined (PolicyType), "StepScalingPolicyConfiguration" :: NullOrUndefined (StepScalingPolicyConfiguration), "TargetTrackingScalingPolicyConfiguration" :: NullOrUndefined (TargetTrackingScalingPolicyConfiguration) } -> { "PolicyName" :: PolicyName, "ServiceNamespace" :: ServiceNamespace, "ResourceId" :: ResourceIdMaxLen1600, "ScalableDimension" :: ScalableDimension, "PolicyType" :: NullOrUndefined (PolicyType), "StepScalingPolicyConfiguration" :: NullOrUndefined (StepScalingPolicyConfiguration), "TargetTrackingScalingPolicyConfiguration" :: NullOrUndefined (TargetTrackingScalingPolicyConfiguration) }) -> PutScalingPolicyRequest
```

Constructs PutScalingPolicyRequest's fields from required parameters

#### `PutScalingPolicyResponse`

``` purescript
newtype PutScalingPolicyResponse
  = PutScalingPolicyResponse { "PolicyARN" :: ResourceIdMaxLen1600, "Alarms" :: NullOrUndefined (Alarms) }
```

##### Instances
``` purescript
Newtype PutScalingPolicyResponse _
Generic PutScalingPolicyResponse _
Show PutScalingPolicyResponse
Decode PutScalingPolicyResponse
Encode PutScalingPolicyResponse
```

#### `newPutScalingPolicyResponse`

``` purescript
newPutScalingPolicyResponse :: ResourceIdMaxLen1600 -> PutScalingPolicyResponse
```

Constructs PutScalingPolicyResponse from required parameters

#### `newPutScalingPolicyResponse'`

``` purescript
newPutScalingPolicyResponse' :: ResourceIdMaxLen1600 -> ({ "PolicyARN" :: ResourceIdMaxLen1600, "Alarms" :: NullOrUndefined (Alarms) } -> { "PolicyARN" :: ResourceIdMaxLen1600, "Alarms" :: NullOrUndefined (Alarms) }) -> PutScalingPolicyResponse
```

Constructs PutScalingPolicyResponse's fields from required parameters

#### `PutScheduledActionRequest`

``` purescript
newtype PutScheduledActionRequest
  = PutScheduledActionRequest { "ServiceNamespace" :: ServiceNamespace, "Schedule" :: NullOrUndefined (ResourceIdMaxLen1600), "ScheduledActionName" :: ScheduledActionName, "ResourceId" :: ResourceIdMaxLen1600, "ScalableDimension" :: NullOrUndefined (ScalableDimension), "StartTime" :: NullOrUndefined (TimestampType), "EndTime" :: NullOrUndefined (TimestampType), "ScalableTargetAction" :: NullOrUndefined (ScalableTargetAction) }
```

##### Instances
``` purescript
Newtype PutScheduledActionRequest _
Generic PutScheduledActionRequest _
Show PutScheduledActionRequest
Decode PutScheduledActionRequest
Encode PutScheduledActionRequest
```

#### `newPutScheduledActionRequest`

``` purescript
newPutScheduledActionRequest :: ResourceIdMaxLen1600 -> ScheduledActionName -> ServiceNamespace -> PutScheduledActionRequest
```

Constructs PutScheduledActionRequest from required parameters

#### `newPutScheduledActionRequest'`

``` purescript
newPutScheduledActionRequest' :: ResourceIdMaxLen1600 -> ScheduledActionName -> ServiceNamespace -> ({ "ServiceNamespace" :: ServiceNamespace, "Schedule" :: NullOrUndefined (ResourceIdMaxLen1600), "ScheduledActionName" :: ScheduledActionName, "ResourceId" :: ResourceIdMaxLen1600, "ScalableDimension" :: NullOrUndefined (ScalableDimension), "StartTime" :: NullOrUndefined (TimestampType), "EndTime" :: NullOrUndefined (TimestampType), "ScalableTargetAction" :: NullOrUndefined (ScalableTargetAction) } -> { "ServiceNamespace" :: ServiceNamespace, "Schedule" :: NullOrUndefined (ResourceIdMaxLen1600), "ScheduledActionName" :: ScheduledActionName, "ResourceId" :: ResourceIdMaxLen1600, "ScalableDimension" :: NullOrUndefined (ScalableDimension), "StartTime" :: NullOrUndefined (TimestampType), "EndTime" :: NullOrUndefined (TimestampType), "ScalableTargetAction" :: NullOrUndefined (ScalableTargetAction) }) -> PutScheduledActionRequest
```

Constructs PutScheduledActionRequest's fields from required parameters

#### `PutScheduledActionResponse`

``` purescript
newtype PutScheduledActionResponse
  = PutScheduledActionResponse NoArguments
```

##### Instances
``` purescript
Newtype PutScheduledActionResponse _
Generic PutScheduledActionResponse _
Show PutScheduledActionResponse
Decode PutScheduledActionResponse
Encode PutScheduledActionResponse
```

#### `RegisterScalableTargetRequest`

``` purescript
newtype RegisterScalableTargetRequest
  = RegisterScalableTargetRequest { "ServiceNamespace" :: ServiceNamespace, "ResourceId" :: ResourceIdMaxLen1600, "ScalableDimension" :: ScalableDimension, "MinCapacity" :: NullOrUndefined (ResourceCapacity), "MaxCapacity" :: NullOrUndefined (ResourceCapacity), "RoleARN" :: NullOrUndefined (ResourceIdMaxLen1600) }
```

##### Instances
``` purescript
Newtype RegisterScalableTargetRequest _
Generic RegisterScalableTargetRequest _
Show RegisterScalableTargetRequest
Decode RegisterScalableTargetRequest
Encode RegisterScalableTargetRequest
```

#### `newRegisterScalableTargetRequest`

``` purescript
newRegisterScalableTargetRequest :: ResourceIdMaxLen1600 -> ScalableDimension -> ServiceNamespace -> RegisterScalableTargetRequest
```

Constructs RegisterScalableTargetRequest from required parameters

#### `newRegisterScalableTargetRequest'`

``` purescript
newRegisterScalableTargetRequest' :: ResourceIdMaxLen1600 -> ScalableDimension -> ServiceNamespace -> ({ "ServiceNamespace" :: ServiceNamespace, "ResourceId" :: ResourceIdMaxLen1600, "ScalableDimension" :: ScalableDimension, "MinCapacity" :: NullOrUndefined (ResourceCapacity), "MaxCapacity" :: NullOrUndefined (ResourceCapacity), "RoleARN" :: NullOrUndefined (ResourceIdMaxLen1600) } -> { "ServiceNamespace" :: ServiceNamespace, "ResourceId" :: ResourceIdMaxLen1600, "ScalableDimension" :: ScalableDimension, "MinCapacity" :: NullOrUndefined (ResourceCapacity), "MaxCapacity" :: NullOrUndefined (ResourceCapacity), "RoleARN" :: NullOrUndefined (ResourceIdMaxLen1600) }) -> RegisterScalableTargetRequest
```

Constructs RegisterScalableTargetRequest's fields from required parameters

#### `RegisterScalableTargetResponse`

``` purescript
newtype RegisterScalableTargetResponse
  = RegisterScalableTargetResponse NoArguments
```

##### Instances
``` purescript
Newtype RegisterScalableTargetResponse _
Generic RegisterScalableTargetResponse _
Show RegisterScalableTargetResponse
Decode RegisterScalableTargetResponse
Encode RegisterScalableTargetResponse
```

#### `ResourceCapacity`

``` purescript
newtype ResourceCapacity
  = ResourceCapacity Int
```

##### Instances
``` purescript
Newtype ResourceCapacity _
Generic ResourceCapacity _
Show ResourceCapacity
Decode ResourceCapacity
Encode ResourceCapacity
```

#### `ResourceId`

``` purescript
newtype ResourceId
  = ResourceId String
```

##### Instances
``` purescript
Newtype ResourceId _
Generic ResourceId _
Show ResourceId
Decode ResourceId
Encode ResourceId
```

#### `ResourceIdMaxLen1600`

``` purescript
newtype ResourceIdMaxLen1600
  = ResourceIdMaxLen1600 String
```

##### Instances
``` purescript
Newtype ResourceIdMaxLen1600 _
Generic ResourceIdMaxLen1600 _
Show ResourceIdMaxLen1600
Decode ResourceIdMaxLen1600
Encode ResourceIdMaxLen1600
```

#### `ResourceIdsMaxLen1600`

``` purescript
newtype ResourceIdsMaxLen1600
  = ResourceIdsMaxLen1600 (Array ResourceIdMaxLen1600)
```

##### Instances
``` purescript
Newtype ResourceIdsMaxLen1600 _
Generic ResourceIdsMaxLen1600 _
Show ResourceIdsMaxLen1600
Decode ResourceIdsMaxLen1600
Encode ResourceIdsMaxLen1600
```

#### `ResourceLabel`

``` purescript
newtype ResourceLabel
  = ResourceLabel String
```

##### Instances
``` purescript
Newtype ResourceLabel _
Generic ResourceLabel _
Show ResourceLabel
Decode ResourceLabel
Encode ResourceLabel
```

#### `ScalableDimension`

``` purescript
newtype ScalableDimension
  = ScalableDimension String
```

##### Instances
``` purescript
Newtype ScalableDimension _
Generic ScalableDimension _
Show ScalableDimension
Decode ScalableDimension
Encode ScalableDimension
```

#### `ScalableTarget`

``` purescript
newtype ScalableTarget
  = ScalableTarget { "ServiceNamespace" :: ServiceNamespace, "ResourceId" :: ResourceIdMaxLen1600, "ScalableDimension" :: ScalableDimension, "MinCapacity" :: ResourceCapacity, "MaxCapacity" :: ResourceCapacity, "RoleARN" :: ResourceIdMaxLen1600, "CreationTime" :: TimestampType }
```

<p>Represents a scalable target.</p>

##### Instances
``` purescript
Newtype ScalableTarget _
Generic ScalableTarget _
Show ScalableTarget
Decode ScalableTarget
Encode ScalableTarget
```

#### `newScalableTarget`

``` purescript
newScalableTarget :: TimestampType -> ResourceCapacity -> ResourceCapacity -> ResourceIdMaxLen1600 -> ResourceIdMaxLen1600 -> ScalableDimension -> ServiceNamespace -> ScalableTarget
```

Constructs ScalableTarget from required parameters

#### `newScalableTarget'`

``` purescript
newScalableTarget' :: TimestampType -> ResourceCapacity -> ResourceCapacity -> ResourceIdMaxLen1600 -> ResourceIdMaxLen1600 -> ScalableDimension -> ServiceNamespace -> ({ "ServiceNamespace" :: ServiceNamespace, "ResourceId" :: ResourceIdMaxLen1600, "ScalableDimension" :: ScalableDimension, "MinCapacity" :: ResourceCapacity, "MaxCapacity" :: ResourceCapacity, "RoleARN" :: ResourceIdMaxLen1600, "CreationTime" :: TimestampType } -> { "ServiceNamespace" :: ServiceNamespace, "ResourceId" :: ResourceIdMaxLen1600, "ScalableDimension" :: ScalableDimension, "MinCapacity" :: ResourceCapacity, "MaxCapacity" :: ResourceCapacity, "RoleARN" :: ResourceIdMaxLen1600, "CreationTime" :: TimestampType }) -> ScalableTarget
```

Constructs ScalableTarget's fields from required parameters

#### `ScalableTargetAction`

``` purescript
newtype ScalableTargetAction
  = ScalableTargetAction { "MinCapacity" :: NullOrUndefined (ResourceCapacity), "MaxCapacity" :: NullOrUndefined (ResourceCapacity) }
```

<p>Represents the minimum and maximum capacity for a scheduled action.</p>

##### Instances
``` purescript
Newtype ScalableTargetAction _
Generic ScalableTargetAction _
Show ScalableTargetAction
Decode ScalableTargetAction
Encode ScalableTargetAction
```

#### `newScalableTargetAction`

``` purescript
newScalableTargetAction :: ScalableTargetAction
```

Constructs ScalableTargetAction from required parameters

#### `newScalableTargetAction'`

``` purescript
newScalableTargetAction' :: ({ "MinCapacity" :: NullOrUndefined (ResourceCapacity), "MaxCapacity" :: NullOrUndefined (ResourceCapacity) } -> { "MinCapacity" :: NullOrUndefined (ResourceCapacity), "MaxCapacity" :: NullOrUndefined (ResourceCapacity) }) -> ScalableTargetAction
```

Constructs ScalableTargetAction's fields from required parameters

#### `ScalableTargets`

``` purescript
newtype ScalableTargets
  = ScalableTargets (Array ScalableTarget)
```

##### Instances
``` purescript
Newtype ScalableTargets _
Generic ScalableTargets _
Show ScalableTargets
Decode ScalableTargets
Encode ScalableTargets
```

#### `ScalingActivities`

``` purescript
newtype ScalingActivities
  = ScalingActivities (Array ScalingActivity)
```

##### Instances
``` purescript
Newtype ScalingActivities _
Generic ScalingActivities _
Show ScalingActivities
Decode ScalingActivities
Encode ScalingActivities
```

#### `ScalingActivity`

``` purescript
newtype ScalingActivity
  = ScalingActivity { "ActivityId" :: ResourceId, "ServiceNamespace" :: ServiceNamespace, "ResourceId" :: ResourceIdMaxLen1600, "ScalableDimension" :: ScalableDimension, "Description" :: XmlString, "Cause" :: XmlString, "StartTime" :: TimestampType, "EndTime" :: NullOrUndefined (TimestampType), "StatusCode" :: ScalingActivityStatusCode, "StatusMessage" :: NullOrUndefined (XmlString), "Details" :: NullOrUndefined (XmlString) }
```

<p>Represents a scaling activity.</p>

##### Instances
``` purescript
Newtype ScalingActivity _
Generic ScalingActivity _
Show ScalingActivity
Decode ScalingActivity
Encode ScalingActivity
```

#### `newScalingActivity`

``` purescript
newScalingActivity :: ResourceId -> XmlString -> XmlString -> ResourceIdMaxLen1600 -> ScalableDimension -> ServiceNamespace -> TimestampType -> ScalingActivityStatusCode -> ScalingActivity
```

Constructs ScalingActivity from required parameters

#### `newScalingActivity'`

``` purescript
newScalingActivity' :: ResourceId -> XmlString -> XmlString -> ResourceIdMaxLen1600 -> ScalableDimension -> ServiceNamespace -> TimestampType -> ScalingActivityStatusCode -> ({ "ActivityId" :: ResourceId, "ServiceNamespace" :: ServiceNamespace, "ResourceId" :: ResourceIdMaxLen1600, "ScalableDimension" :: ScalableDimension, "Description" :: XmlString, "Cause" :: XmlString, "StartTime" :: TimestampType, "EndTime" :: NullOrUndefined (TimestampType), "StatusCode" :: ScalingActivityStatusCode, "StatusMessage" :: NullOrUndefined (XmlString), "Details" :: NullOrUndefined (XmlString) } -> { "ActivityId" :: ResourceId, "ServiceNamespace" :: ServiceNamespace, "ResourceId" :: ResourceIdMaxLen1600, "ScalableDimension" :: ScalableDimension, "Description" :: XmlString, "Cause" :: XmlString, "StartTime" :: TimestampType, "EndTime" :: NullOrUndefined (TimestampType), "StatusCode" :: ScalingActivityStatusCode, "StatusMessage" :: NullOrUndefined (XmlString), "Details" :: NullOrUndefined (XmlString) }) -> ScalingActivity
```

Constructs ScalingActivity's fields from required parameters

#### `ScalingActivityStatusCode`

``` purescript
newtype ScalingActivityStatusCode
  = ScalingActivityStatusCode String
```

##### Instances
``` purescript
Newtype ScalingActivityStatusCode _
Generic ScalingActivityStatusCode _
Show ScalingActivityStatusCode
Decode ScalingActivityStatusCode
Encode ScalingActivityStatusCode
```

#### `ScalingAdjustment`

``` purescript
newtype ScalingAdjustment
  = ScalingAdjustment Int
```

##### Instances
``` purescript
Newtype ScalingAdjustment _
Generic ScalingAdjustment _
Show ScalingAdjustment
Decode ScalingAdjustment
Encode ScalingAdjustment
```

#### `ScalingPolicies`

``` purescript
newtype ScalingPolicies
  = ScalingPolicies (Array ScalingPolicy)
```

##### Instances
``` purescript
Newtype ScalingPolicies _
Generic ScalingPolicies _
Show ScalingPolicies
Decode ScalingPolicies
Encode ScalingPolicies
```

#### `ScalingPolicy`

``` purescript
newtype ScalingPolicy
  = ScalingPolicy { "PolicyARN" :: ResourceIdMaxLen1600, "PolicyName" :: PolicyName, "ServiceNamespace" :: ServiceNamespace, "ResourceId" :: ResourceIdMaxLen1600, "ScalableDimension" :: ScalableDimension, "PolicyType" :: PolicyType, "StepScalingPolicyConfiguration" :: NullOrUndefined (StepScalingPolicyConfiguration), "TargetTrackingScalingPolicyConfiguration" :: NullOrUndefined (TargetTrackingScalingPolicyConfiguration), "Alarms" :: NullOrUndefined (Alarms), "CreationTime" :: TimestampType }
```

<p>Represents a scaling policy.</p>

##### Instances
``` purescript
Newtype ScalingPolicy _
Generic ScalingPolicy _
Show ScalingPolicy
Decode ScalingPolicy
Encode ScalingPolicy
```

#### `newScalingPolicy`

``` purescript
newScalingPolicy :: TimestampType -> ResourceIdMaxLen1600 -> PolicyName -> PolicyType -> ResourceIdMaxLen1600 -> ScalableDimension -> ServiceNamespace -> ScalingPolicy
```

Constructs ScalingPolicy from required parameters

#### `newScalingPolicy'`

``` purescript
newScalingPolicy' :: TimestampType -> ResourceIdMaxLen1600 -> PolicyName -> PolicyType -> ResourceIdMaxLen1600 -> ScalableDimension -> ServiceNamespace -> ({ "PolicyARN" :: ResourceIdMaxLen1600, "PolicyName" :: PolicyName, "ServiceNamespace" :: ServiceNamespace, "ResourceId" :: ResourceIdMaxLen1600, "ScalableDimension" :: ScalableDimension, "PolicyType" :: PolicyType, "StepScalingPolicyConfiguration" :: NullOrUndefined (StepScalingPolicyConfiguration), "TargetTrackingScalingPolicyConfiguration" :: NullOrUndefined (TargetTrackingScalingPolicyConfiguration), "Alarms" :: NullOrUndefined (Alarms), "CreationTime" :: TimestampType } -> { "PolicyARN" :: ResourceIdMaxLen1600, "PolicyName" :: PolicyName, "ServiceNamespace" :: ServiceNamespace, "ResourceId" :: ResourceIdMaxLen1600, "ScalableDimension" :: ScalableDimension, "PolicyType" :: PolicyType, "StepScalingPolicyConfiguration" :: NullOrUndefined (StepScalingPolicyConfiguration), "TargetTrackingScalingPolicyConfiguration" :: NullOrUndefined (TargetTrackingScalingPolicyConfiguration), "Alarms" :: NullOrUndefined (Alarms), "CreationTime" :: TimestampType }) -> ScalingPolicy
```

Constructs ScalingPolicy's fields from required parameters

#### `ScheduledAction`

``` purescript
newtype ScheduledAction
  = ScheduledAction { "ScheduledActionName" :: ScheduledActionName, "ScheduledActionARN" :: ResourceIdMaxLen1600, "ServiceNamespace" :: ServiceNamespace, "Schedule" :: ResourceIdMaxLen1600, "ResourceId" :: ResourceIdMaxLen1600, "ScalableDimension" :: NullOrUndefined (ScalableDimension), "StartTime" :: NullOrUndefined (TimestampType), "EndTime" :: NullOrUndefined (TimestampType), "ScalableTargetAction" :: NullOrUndefined (ScalableTargetAction), "CreationTime" :: TimestampType }
```

<p>Represents a scheduled action.</p>

##### Instances
``` purescript
Newtype ScheduledAction _
Generic ScheduledAction _
Show ScheduledAction
Decode ScheduledAction
Encode ScheduledAction
```

#### `newScheduledAction`

``` purescript
newScheduledAction :: TimestampType -> ResourceIdMaxLen1600 -> ResourceIdMaxLen1600 -> ResourceIdMaxLen1600 -> ScheduledActionName -> ServiceNamespace -> ScheduledAction
```

Constructs ScheduledAction from required parameters

#### `newScheduledAction'`

``` purescript
newScheduledAction' :: TimestampType -> ResourceIdMaxLen1600 -> ResourceIdMaxLen1600 -> ResourceIdMaxLen1600 -> ScheduledActionName -> ServiceNamespace -> ({ "ScheduledActionName" :: ScheduledActionName, "ScheduledActionARN" :: ResourceIdMaxLen1600, "ServiceNamespace" :: ServiceNamespace, "Schedule" :: ResourceIdMaxLen1600, "ResourceId" :: ResourceIdMaxLen1600, "ScalableDimension" :: NullOrUndefined (ScalableDimension), "StartTime" :: NullOrUndefined (TimestampType), "EndTime" :: NullOrUndefined (TimestampType), "ScalableTargetAction" :: NullOrUndefined (ScalableTargetAction), "CreationTime" :: TimestampType } -> { "ScheduledActionName" :: ScheduledActionName, "ScheduledActionARN" :: ResourceIdMaxLen1600, "ServiceNamespace" :: ServiceNamespace, "Schedule" :: ResourceIdMaxLen1600, "ResourceId" :: ResourceIdMaxLen1600, "ScalableDimension" :: NullOrUndefined (ScalableDimension), "StartTime" :: NullOrUndefined (TimestampType), "EndTime" :: NullOrUndefined (TimestampType), "ScalableTargetAction" :: NullOrUndefined (ScalableTargetAction), "CreationTime" :: TimestampType }) -> ScheduledAction
```

Constructs ScheduledAction's fields from required parameters

#### `ScheduledActionName`

``` purescript
newtype ScheduledActionName
  = ScheduledActionName String
```

##### Instances
``` purescript
Newtype ScheduledActionName _
Generic ScheduledActionName _
Show ScheduledActionName
Decode ScheduledActionName
Encode ScheduledActionName
```

#### `ScheduledActions`

``` purescript
newtype ScheduledActions
  = ScheduledActions (Array ScheduledAction)
```

##### Instances
``` purescript
Newtype ScheduledActions _
Generic ScheduledActions _
Show ScheduledActions
Decode ScheduledActions
Encode ScheduledActions
```

#### `ServiceNamespace`

``` purescript
newtype ServiceNamespace
  = ServiceNamespace String
```

##### Instances
``` purescript
Newtype ServiceNamespace _
Generic ServiceNamespace _
Show ServiceNamespace
Decode ServiceNamespace
Encode ServiceNamespace
```

#### `StepAdjustment`

``` purescript
newtype StepAdjustment
  = StepAdjustment { "MetricIntervalLowerBound" :: NullOrUndefined (MetricScale), "MetricIntervalUpperBound" :: NullOrUndefined (MetricScale), "ScalingAdjustment" :: ScalingAdjustment }
```

<p>Represents a step adjustment for a <a>StepScalingPolicyConfiguration</a>. Describes an adjustment based on the difference between the value of the aggregated CloudWatch metric and the breach threshold that you've defined for the alarm. </p> <p>For the following examples, suppose that you have an alarm with a breach threshold of 50:</p> <ul> <li> <p>To trigger the adjustment when the metric is greater than or equal to 50 and less than 60, specify a lower bound of 0 and an upper bound of 10.</p> </li> <li> <p>To trigger the adjustment when the metric is greater than 40 and less than or equal to 50, specify a lower bound of -10 and an upper bound of 0.</p> </li> </ul> <p>There are a few rules for the step adjustments for your step policy:</p> <ul> <li> <p>The ranges of your step adjustments can't overlap or have a gap.</p> </li> <li> <p>At most one step adjustment can have a null lower bound. If one step adjustment has a negative lower bound, then there must be a step adjustment with a null lower bound.</p> </li> <li> <p>At most one step adjustment can have a null upper bound. If one step adjustment has a positive upper bound, then there must be a step adjustment with a null upper bound.</p> </li> <li> <p>The upper and lower bound can't be null in the same step adjustment.</p> </li> </ul>

##### Instances
``` purescript
Newtype StepAdjustment _
Generic StepAdjustment _
Show StepAdjustment
Decode StepAdjustment
Encode StepAdjustment
```

#### `newStepAdjustment`

``` purescript
newStepAdjustment :: ScalingAdjustment -> StepAdjustment
```

Constructs StepAdjustment from required parameters

#### `newStepAdjustment'`

``` purescript
newStepAdjustment' :: ScalingAdjustment -> ({ "MetricIntervalLowerBound" :: NullOrUndefined (MetricScale), "MetricIntervalUpperBound" :: NullOrUndefined (MetricScale), "ScalingAdjustment" :: ScalingAdjustment } -> { "MetricIntervalLowerBound" :: NullOrUndefined (MetricScale), "MetricIntervalUpperBound" :: NullOrUndefined (MetricScale), "ScalingAdjustment" :: ScalingAdjustment }) -> StepAdjustment
```

Constructs StepAdjustment's fields from required parameters

#### `StepAdjustments`

``` purescript
newtype StepAdjustments
  = StepAdjustments (Array StepAdjustment)
```

##### Instances
``` purescript
Newtype StepAdjustments _
Generic StepAdjustments _
Show StepAdjustments
Decode StepAdjustments
Encode StepAdjustments
```

#### `StepScalingPolicyConfiguration`

``` purescript
newtype StepScalingPolicyConfiguration
  = StepScalingPolicyConfiguration { "AdjustmentType" :: NullOrUndefined (AdjustmentType), "StepAdjustments" :: NullOrUndefined (StepAdjustments), "MinAdjustmentMagnitude" :: NullOrUndefined (MinAdjustmentMagnitude), "Cooldown" :: NullOrUndefined (Cooldown), "MetricAggregationType" :: NullOrUndefined (MetricAggregationType) }
```

<p>Represents a step scaling policy configuration.</p>

##### Instances
``` purescript
Newtype StepScalingPolicyConfiguration _
Generic StepScalingPolicyConfiguration _
Show StepScalingPolicyConfiguration
Decode StepScalingPolicyConfiguration
Encode StepScalingPolicyConfiguration
```

#### `newStepScalingPolicyConfiguration`

``` purescript
newStepScalingPolicyConfiguration :: StepScalingPolicyConfiguration
```

Constructs StepScalingPolicyConfiguration from required parameters

#### `newStepScalingPolicyConfiguration'`

``` purescript
newStepScalingPolicyConfiguration' :: ({ "AdjustmentType" :: NullOrUndefined (AdjustmentType), "StepAdjustments" :: NullOrUndefined (StepAdjustments), "MinAdjustmentMagnitude" :: NullOrUndefined (MinAdjustmentMagnitude), "Cooldown" :: NullOrUndefined (Cooldown), "MetricAggregationType" :: NullOrUndefined (MetricAggregationType) } -> { "AdjustmentType" :: NullOrUndefined (AdjustmentType), "StepAdjustments" :: NullOrUndefined (StepAdjustments), "MinAdjustmentMagnitude" :: NullOrUndefined (MinAdjustmentMagnitude), "Cooldown" :: NullOrUndefined (Cooldown), "MetricAggregationType" :: NullOrUndefined (MetricAggregationType) }) -> StepScalingPolicyConfiguration
```

Constructs StepScalingPolicyConfiguration's fields from required parameters

#### `TargetTrackingScalingPolicyConfiguration`

``` purescript
newtype TargetTrackingScalingPolicyConfiguration
  = TargetTrackingScalingPolicyConfiguration { "TargetValue" :: MetricScale, "PredefinedMetricSpecification" :: NullOrUndefined (PredefinedMetricSpecification), "CustomizedMetricSpecification" :: NullOrUndefined (CustomizedMetricSpecification), "ScaleOutCooldown" :: NullOrUndefined (Cooldown), "ScaleInCooldown" :: NullOrUndefined (Cooldown), "DisableScaleIn" :: NullOrUndefined (DisableScaleIn) }
```

<p>Represents a target tracking scaling policy configuration.</p>

##### Instances
``` purescript
Newtype TargetTrackingScalingPolicyConfiguration _
Generic TargetTrackingScalingPolicyConfiguration _
Show TargetTrackingScalingPolicyConfiguration
Decode TargetTrackingScalingPolicyConfiguration
Encode TargetTrackingScalingPolicyConfiguration
```

#### `newTargetTrackingScalingPolicyConfiguration`

``` purescript
newTargetTrackingScalingPolicyConfiguration :: MetricScale -> TargetTrackingScalingPolicyConfiguration
```

Constructs TargetTrackingScalingPolicyConfiguration from required parameters

#### `newTargetTrackingScalingPolicyConfiguration'`

``` purescript
newTargetTrackingScalingPolicyConfiguration' :: MetricScale -> ({ "TargetValue" :: MetricScale, "PredefinedMetricSpecification" :: NullOrUndefined (PredefinedMetricSpecification), "CustomizedMetricSpecification" :: NullOrUndefined (CustomizedMetricSpecification), "ScaleOutCooldown" :: NullOrUndefined (Cooldown), "ScaleInCooldown" :: NullOrUndefined (Cooldown), "DisableScaleIn" :: NullOrUndefined (DisableScaleIn) } -> { "TargetValue" :: MetricScale, "PredefinedMetricSpecification" :: NullOrUndefined (PredefinedMetricSpecification), "CustomizedMetricSpecification" :: NullOrUndefined (CustomizedMetricSpecification), "ScaleOutCooldown" :: NullOrUndefined (Cooldown), "ScaleInCooldown" :: NullOrUndefined (Cooldown), "DisableScaleIn" :: NullOrUndefined (DisableScaleIn) }) -> TargetTrackingScalingPolicyConfiguration
```

Constructs TargetTrackingScalingPolicyConfiguration's fields from required parameters

#### `TimestampType`

``` purescript
newtype TimestampType
  = TimestampType Timestamp
```

##### Instances
``` purescript
Newtype TimestampType _
Generic TimestampType _
Show TimestampType
Decode TimestampType
Encode TimestampType
```

#### `ValidationException`

``` purescript
newtype ValidationException
  = ValidationException { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>An exception was thrown for a validation issue. Review the available parameters for the API request.</p>

##### Instances
``` purescript
Newtype ValidationException _
Generic ValidationException _
Show ValidationException
Decode ValidationException
Encode ValidationException
```

#### `newValidationException`

``` purescript
newValidationException :: ValidationException
```

Constructs ValidationException from required parameters

#### `newValidationException'`

``` purescript
newValidationException' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> ValidationException
```

Constructs ValidationException's fields from required parameters

#### `XmlString`

``` purescript
newtype XmlString
  = XmlString String
```

##### Instances
``` purescript
Newtype XmlString _
Generic XmlString _
Show XmlString
Decode XmlString
Encode XmlString
```


