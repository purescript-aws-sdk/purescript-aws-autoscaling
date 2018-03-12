

-- | <p>With Application Auto Scaling, you can configure automatic scaling for your scalable AWS resources. You can use Application Auto Scaling to accomplish the following tasks:</p> <ul> <li> <p>Define scaling policies to automatically scale your AWS resources</p> </li> <li> <p>Scale your resources in response to CloudWatch alarms</p> </li> <li> <p>Schedule one-time or recurring scaling actions</p> </li> <li> <p>View the history of your scaling events</p> </li> </ul> <p>Application Auto Scaling can scale the following AWS resources:</p> <ul> <li> <p>Amazon ECS services. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-auto-scaling.html">Service Auto Scaling</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> </li> <li> <p>Amazon EC2 Spot fleets. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/fleet-auto-scaling.html">Automatic Scaling for Spot Fleet</a> in the <i>Amazon EC2 User Guide</i>.</p> </li> <li> <p>Amazon EMR clusters. For more information, see <a href="http://docs.aws.amazon.com/ElasticMapReduce/latest/ManagementGuide/emr-automatic-scaling.html">Using Automatic Scaling in Amazon EMR</a> in the <i>Amazon EMR Management Guide</i>.</p> </li> <li> <p>AppStream 2.0 fleets. For more information, see <a href="http://docs.aws.amazon.com/appstream2/latest/developerguide/autoscaling.html">Fleet Auto Scaling for Amazon AppStream 2.0</a> in the <i>Amazon AppStream 2.0 Developer Guide</i>.</p> </li> <li> <p>Provisioned read and write capacity for Amazon DynamoDB tables and global secondary indexes. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/AutoScaling.html">Managing Throughput Capacity Automatically with DynamoDB Auto Scaling</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p> </li> <li> <p>Amazon Aurora Replicas. For more information, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Aurora.Integrating.AutoScaling.html">Using Amazon Aurora Auto Scaling with Aurora Replicas</a>.</p> </li> <li> <p>Amazon SageMaker endpoints. For more information, see <a href="http://docs.aws.amazon.com/sagemaker/latest/dg/endpoint-auto-scaling.html">Automatically Scaling Amazon SageMaker Models</a>.</p> </li> </ul> <p>To configure automatic scaling for multiple resources across multiple services, use AWS Auto Scaling to create a scaling plan for your application. For more information, see <a href="http://aws.amazon.com/autoscaling">AWS Auto Scaling</a>.</p> <p>For a list of supported regions, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html#as-app_region">AWS Regions and Endpoints: Application Auto Scaling</a> in the <i>AWS General Reference</i>.</p>
module AWS.AutoScaling where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)
import Data.Foreign as Foreign
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.NullOrUndefined as NullOrUndefined
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap as StrMap

import AWS.Request as Request
import AWS.Request.Types as Types


-- | <p>Deletes the specified Application Auto Scaling scaling policy.</p> <p>Deleting a policy deletes the underlying alarm action, but does not delete the CloudWatch alarm associated with the scaling policy, even if it no longer has an associated action.</p> <p>To create a scaling policy or update an existing one, see <a>PutScalingPolicy</a>.</p>
deleteScalingPolicy :: forall eff. DeleteScalingPolicyRequest -> Aff (exception :: EXCEPTION | eff) DeleteScalingPolicyResponse
deleteScalingPolicy = Request.request service method  where
    service = Request.ServiceName "AutoScaling"
    method = Request.MethodName "deleteScalingPolicy"


-- | <p>Deletes the specified Application Auto Scaling scheduled action.</p>
deleteScheduledAction :: forall eff. DeleteScheduledActionRequest -> Aff (exception :: EXCEPTION | eff) DeleteScheduledActionResponse
deleteScheduledAction = Request.request service method  where
    service = Request.ServiceName "AutoScaling"
    method = Request.MethodName "deleteScheduledAction"


-- | <p>Deregisters a scalable target.</p> <p>Deregistering a scalable target deletes the scaling policies that are associated with it.</p> <p>To create a scalable target or update an existing one, see <a>RegisterScalableTarget</a>.</p>
deregisterScalableTarget :: forall eff. DeregisterScalableTargetRequest -> Aff (exception :: EXCEPTION | eff) DeregisterScalableTargetResponse
deregisterScalableTarget = Request.request service method  where
    service = Request.ServiceName "AutoScaling"
    method = Request.MethodName "deregisterScalableTarget"


-- | <p>Gets information about the scalable targets in the specified namespace.</p> <p>You can filter the results using the <code>ResourceIds</code> and <code>ScalableDimension</code> parameters.</p> <p>To create a scalable target or update an existing one, see <a>RegisterScalableTarget</a>. If you are no longer using a scalable target, you can deregister it using <a>DeregisterScalableTarget</a>.</p>
describeScalableTargets :: forall eff. DescribeScalableTargetsRequest -> Aff (exception :: EXCEPTION | eff) DescribeScalableTargetsResponse
describeScalableTargets = Request.request service method  where
    service = Request.ServiceName "AutoScaling"
    method = Request.MethodName "describeScalableTargets"


-- | <p>Provides descriptive information about the scaling activities in the specified namespace from the previous six weeks.</p> <p>You can filter the results using the <code>ResourceId</code> and <code>ScalableDimension</code> parameters.</p> <p>Scaling activities are triggered by CloudWatch alarms that are associated with scaling policies. To view the scaling policies for a service namespace, see <a>DescribeScalingPolicies</a>. To create a scaling policy or update an existing one, see <a>PutScalingPolicy</a>.</p>
describeScalingActivities :: forall eff. DescribeScalingActivitiesRequest -> Aff (exception :: EXCEPTION | eff) DescribeScalingActivitiesResponse
describeScalingActivities = Request.request service method  where
    service = Request.ServiceName "AutoScaling"
    method = Request.MethodName "describeScalingActivities"


-- | <p>Describes the scaling policies for the specified service namespace.</p> <p>You can filter the results using the <code>ResourceId</code>, <code>ScalableDimension</code>, and <code>PolicyNames</code> parameters.</p> <p>To create a scaling policy or update an existing one, see <a>PutScalingPolicy</a>. If you are no longer using a scaling policy, you can delete it using <a>DeleteScalingPolicy</a>.</p>
describeScalingPolicies :: forall eff. DescribeScalingPoliciesRequest -> Aff (exception :: EXCEPTION | eff) DescribeScalingPoliciesResponse
describeScalingPolicies = Request.request service method  where
    service = Request.ServiceName "AutoScaling"
    method = Request.MethodName "describeScalingPolicies"


-- | <p>Describes the scheduled actions for the specified service namespace.</p> <p>You can filter the results using the <code>ResourceId</code>, <code>ScalableDimension</code>, and <code>ScheduledActionNames</code> parameters.</p> <p>To create a scheduled action or update an existing one, see <a>PutScheduledAction</a>. If you are no longer using a scheduled action, you can delete it using <a>DeleteScheduledAction</a>.</p>
describeScheduledActions :: forall eff. DescribeScheduledActionsRequest -> Aff (exception :: EXCEPTION | eff) DescribeScheduledActionsResponse
describeScheduledActions = Request.request service method  where
    service = Request.ServiceName "AutoScaling"
    method = Request.MethodName "describeScheduledActions"


-- | <p>Creates or updates a policy for an Application Auto Scaling scalable target.</p> <p>Each scalable target is identified by a service namespace, resource ID, and scalable dimension. A scaling policy applies to the scalable target identified by those three attributes. You cannot create a scaling policy until you register the scalable target using <a>RegisterScalableTarget</a>.</p> <p>To update a policy, specify its policy name and the parameters that you want to change. Any parameters that you don't specify are not changed by this update request.</p> <p>You can view the scaling policies for a service namespace using <a>DescribeScalingPolicies</a>. If you are no longer using a scaling policy, you can delete it using <a>DeleteScalingPolicy</a>.</p>
putScalingPolicy :: forall eff. PutScalingPolicyRequest -> Aff (exception :: EXCEPTION | eff) PutScalingPolicyResponse
putScalingPolicy = Request.request service method  where
    service = Request.ServiceName "AutoScaling"
    method = Request.MethodName "putScalingPolicy"


-- | <p>Creates or updates a scheduled action for an Application Auto Scaling scalable target.</p> <p>Each scalable target is identified by a service namespace, resource ID, and scalable dimension. A scheduled action applies to the scalable target identified by those three attributes. You cannot create a scheduled action until you register the scalable target using <a>RegisterScalableTarget</a>.</p> <p>To update an action, specify its name and the parameters that you want to change. If you don't specify start and end times, the old values are deleted. Any other parameters that you don't specify are not changed by this update request.</p> <p>You can view the scheduled actions using <a>DescribeScheduledActions</a>. If you are no longer using a scheduled action, you can delete it using <a>DeleteScheduledAction</a>.</p>
putScheduledAction :: forall eff. PutScheduledActionRequest -> Aff (exception :: EXCEPTION | eff) PutScheduledActionResponse
putScheduledAction = Request.request service method  where
    service = Request.ServiceName "AutoScaling"
    method = Request.MethodName "putScheduledAction"


-- | <p>Registers or updates a scalable target. A scalable target is a resource that Application Auto Scaling can scale out or scale in. After you have registered a scalable target, you can use this operation to update the minimum and maximum values for its scalable dimension.</p> <p>After you register a scalable target, you can create and apply scaling policies using <a>PutScalingPolicy</a>. You can view the scaling policies for a service namespace using <a>DescribeScalableTargets</a>. If you no longer need a scalable target, you can deregister it using <a>DeregisterScalableTarget</a>.</p>
registerScalableTarget :: forall eff. RegisterScalableTargetRequest -> Aff (exception :: EXCEPTION | eff) RegisterScalableTargetResponse
registerScalableTarget = Request.request service method  where
    service = Request.ServiceName "AutoScaling"
    method = Request.MethodName "registerScalableTarget"


newtype AdjustmentType = AdjustmentType String
derive instance newtypeAdjustmentType :: Newtype AdjustmentType _
derive instance repGenericAdjustmentType :: Generic AdjustmentType _
instance showAdjustmentType :: Show AdjustmentType where
  show = genericShow
instance decodeAdjustmentType :: Decode AdjustmentType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAdjustmentType :: Encode AdjustmentType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Represents a CloudWatch alarm associated with a scaling policy.</p>
newtype Alarm = Alarm 
  { "AlarmName" :: (ResourceId)
  , "AlarmARN" :: (ResourceId)
  }
derive instance newtypeAlarm :: Newtype Alarm _
derive instance repGenericAlarm :: Generic Alarm _
instance showAlarm :: Show Alarm where
  show = genericShow
instance decodeAlarm :: Decode Alarm where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAlarm :: Encode Alarm where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Alarm from required parameters
newAlarm :: ResourceId -> ResourceId -> Alarm
newAlarm _AlarmARN _AlarmName = Alarm { "AlarmARN": _AlarmARN, "AlarmName": _AlarmName }

-- | Constructs Alarm's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAlarm' :: ResourceId -> ResourceId -> ( { "AlarmName" :: (ResourceId) , "AlarmARN" :: (ResourceId) } -> {"AlarmName" :: (ResourceId) , "AlarmARN" :: (ResourceId) } ) -> Alarm
newAlarm' _AlarmARN _AlarmName customize = (Alarm <<< customize) { "AlarmARN": _AlarmARN, "AlarmName": _AlarmName }



newtype Alarms = Alarms (Array Alarm)
derive instance newtypeAlarms :: Newtype Alarms _
derive instance repGenericAlarms :: Generic Alarms _
instance showAlarms :: Show Alarms where
  show = genericShow
instance decodeAlarms :: Decode Alarms where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAlarms :: Encode Alarms where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Concurrent updates caused an exception, for example, if you request an update to an Application Auto Scaling resource that already has a pending update.</p>
newtype ConcurrentUpdateException = ConcurrentUpdateException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeConcurrentUpdateException :: Newtype ConcurrentUpdateException _
derive instance repGenericConcurrentUpdateException :: Generic ConcurrentUpdateException _
instance showConcurrentUpdateException :: Show ConcurrentUpdateException where
  show = genericShow
instance decodeConcurrentUpdateException :: Decode ConcurrentUpdateException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeConcurrentUpdateException :: Encode ConcurrentUpdateException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ConcurrentUpdateException from required parameters
newConcurrentUpdateException :: ConcurrentUpdateException
newConcurrentUpdateException  = ConcurrentUpdateException { "Message": (NullOrUndefined Nothing) }

-- | Constructs ConcurrentUpdateException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConcurrentUpdateException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> ConcurrentUpdateException
newConcurrentUpdateException'  customize = (ConcurrentUpdateException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype Cooldown = Cooldown Int
derive instance newtypeCooldown :: Newtype Cooldown _
derive instance repGenericCooldown :: Generic Cooldown _
instance showCooldown :: Show Cooldown where
  show = genericShow
instance decodeCooldown :: Decode Cooldown where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCooldown :: Encode Cooldown where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Configures a customized metric for a target tracking policy.</p>
newtype CustomizedMetricSpecification = CustomizedMetricSpecification 
  { "MetricName" :: (MetricName)
  , "Namespace" :: (MetricNamespace)
  , "Dimensions" :: NullOrUndefined.NullOrUndefined (MetricDimensions)
  , "Statistic" :: (MetricStatistic)
  , "Unit" :: NullOrUndefined.NullOrUndefined (MetricUnit)
  }
derive instance newtypeCustomizedMetricSpecification :: Newtype CustomizedMetricSpecification _
derive instance repGenericCustomizedMetricSpecification :: Generic CustomizedMetricSpecification _
instance showCustomizedMetricSpecification :: Show CustomizedMetricSpecification where
  show = genericShow
instance decodeCustomizedMetricSpecification :: Decode CustomizedMetricSpecification where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCustomizedMetricSpecification :: Encode CustomizedMetricSpecification where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CustomizedMetricSpecification from required parameters
newCustomizedMetricSpecification :: MetricName -> MetricNamespace -> MetricStatistic -> CustomizedMetricSpecification
newCustomizedMetricSpecification _MetricName _Namespace _Statistic = CustomizedMetricSpecification { "MetricName": _MetricName, "Namespace": _Namespace, "Statistic": _Statistic, "Dimensions": (NullOrUndefined Nothing), "Unit": (NullOrUndefined Nothing) }

-- | Constructs CustomizedMetricSpecification's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCustomizedMetricSpecification' :: MetricName -> MetricNamespace -> MetricStatistic -> ( { "MetricName" :: (MetricName) , "Namespace" :: (MetricNamespace) , "Dimensions" :: NullOrUndefined.NullOrUndefined (MetricDimensions) , "Statistic" :: (MetricStatistic) , "Unit" :: NullOrUndefined.NullOrUndefined (MetricUnit) } -> {"MetricName" :: (MetricName) , "Namespace" :: (MetricNamespace) , "Dimensions" :: NullOrUndefined.NullOrUndefined (MetricDimensions) , "Statistic" :: (MetricStatistic) , "Unit" :: NullOrUndefined.NullOrUndefined (MetricUnit) } ) -> CustomizedMetricSpecification
newCustomizedMetricSpecification' _MetricName _Namespace _Statistic customize = (CustomizedMetricSpecification <<< customize) { "MetricName": _MetricName, "Namespace": _Namespace, "Statistic": _Statistic, "Dimensions": (NullOrUndefined Nothing), "Unit": (NullOrUndefined Nothing) }



newtype DeleteScalingPolicyRequest = DeleteScalingPolicyRequest 
  { "PolicyName" :: (ResourceIdMaxLen1600)
  , "ServiceNamespace" :: (ServiceNamespace)
  , "ResourceId" :: (ResourceIdMaxLen1600)
  , "ScalableDimension" :: (ScalableDimension)
  }
derive instance newtypeDeleteScalingPolicyRequest :: Newtype DeleteScalingPolicyRequest _
derive instance repGenericDeleteScalingPolicyRequest :: Generic DeleteScalingPolicyRequest _
instance showDeleteScalingPolicyRequest :: Show DeleteScalingPolicyRequest where
  show = genericShow
instance decodeDeleteScalingPolicyRequest :: Decode DeleteScalingPolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteScalingPolicyRequest :: Encode DeleteScalingPolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteScalingPolicyRequest from required parameters
newDeleteScalingPolicyRequest :: ResourceIdMaxLen1600 -> ResourceIdMaxLen1600 -> ScalableDimension -> ServiceNamespace -> DeleteScalingPolicyRequest
newDeleteScalingPolicyRequest _PolicyName _ResourceId _ScalableDimension _ServiceNamespace = DeleteScalingPolicyRequest { "PolicyName": _PolicyName, "ResourceId": _ResourceId, "ScalableDimension": _ScalableDimension, "ServiceNamespace": _ServiceNamespace }

-- | Constructs DeleteScalingPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteScalingPolicyRequest' :: ResourceIdMaxLen1600 -> ResourceIdMaxLen1600 -> ScalableDimension -> ServiceNamespace -> ( { "PolicyName" :: (ResourceIdMaxLen1600) , "ServiceNamespace" :: (ServiceNamespace) , "ResourceId" :: (ResourceIdMaxLen1600) , "ScalableDimension" :: (ScalableDimension) } -> {"PolicyName" :: (ResourceIdMaxLen1600) , "ServiceNamespace" :: (ServiceNamespace) , "ResourceId" :: (ResourceIdMaxLen1600) , "ScalableDimension" :: (ScalableDimension) } ) -> DeleteScalingPolicyRequest
newDeleteScalingPolicyRequest' _PolicyName _ResourceId _ScalableDimension _ServiceNamespace customize = (DeleteScalingPolicyRequest <<< customize) { "PolicyName": _PolicyName, "ResourceId": _ResourceId, "ScalableDimension": _ScalableDimension, "ServiceNamespace": _ServiceNamespace }



newtype DeleteScalingPolicyResponse = DeleteScalingPolicyResponse Types.NoArguments
derive instance newtypeDeleteScalingPolicyResponse :: Newtype DeleteScalingPolicyResponse _
derive instance repGenericDeleteScalingPolicyResponse :: Generic DeleteScalingPolicyResponse _
instance showDeleteScalingPolicyResponse :: Show DeleteScalingPolicyResponse where
  show = genericShow
instance decodeDeleteScalingPolicyResponse :: Decode DeleteScalingPolicyResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteScalingPolicyResponse :: Encode DeleteScalingPolicyResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DeleteScheduledActionRequest = DeleteScheduledActionRequest 
  { "ServiceNamespace" :: (ServiceNamespace)
  , "ScheduledActionName" :: (ResourceIdMaxLen1600)
  , "ResourceId" :: (ResourceIdMaxLen1600)
  , "ScalableDimension" :: NullOrUndefined.NullOrUndefined (ScalableDimension)
  }
derive instance newtypeDeleteScheduledActionRequest :: Newtype DeleteScheduledActionRequest _
derive instance repGenericDeleteScheduledActionRequest :: Generic DeleteScheduledActionRequest _
instance showDeleteScheduledActionRequest :: Show DeleteScheduledActionRequest where
  show = genericShow
instance decodeDeleteScheduledActionRequest :: Decode DeleteScheduledActionRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteScheduledActionRequest :: Encode DeleteScheduledActionRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteScheduledActionRequest from required parameters
newDeleteScheduledActionRequest :: ResourceIdMaxLen1600 -> ResourceIdMaxLen1600 -> ServiceNamespace -> DeleteScheduledActionRequest
newDeleteScheduledActionRequest _ResourceId _ScheduledActionName _ServiceNamespace = DeleteScheduledActionRequest { "ResourceId": _ResourceId, "ScheduledActionName": _ScheduledActionName, "ServiceNamespace": _ServiceNamespace, "ScalableDimension": (NullOrUndefined Nothing) }

-- | Constructs DeleteScheduledActionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteScheduledActionRequest' :: ResourceIdMaxLen1600 -> ResourceIdMaxLen1600 -> ServiceNamespace -> ( { "ServiceNamespace" :: (ServiceNamespace) , "ScheduledActionName" :: (ResourceIdMaxLen1600) , "ResourceId" :: (ResourceIdMaxLen1600) , "ScalableDimension" :: NullOrUndefined.NullOrUndefined (ScalableDimension) } -> {"ServiceNamespace" :: (ServiceNamespace) , "ScheduledActionName" :: (ResourceIdMaxLen1600) , "ResourceId" :: (ResourceIdMaxLen1600) , "ScalableDimension" :: NullOrUndefined.NullOrUndefined (ScalableDimension) } ) -> DeleteScheduledActionRequest
newDeleteScheduledActionRequest' _ResourceId _ScheduledActionName _ServiceNamespace customize = (DeleteScheduledActionRequest <<< customize) { "ResourceId": _ResourceId, "ScheduledActionName": _ScheduledActionName, "ServiceNamespace": _ServiceNamespace, "ScalableDimension": (NullOrUndefined Nothing) }



newtype DeleteScheduledActionResponse = DeleteScheduledActionResponse Types.NoArguments
derive instance newtypeDeleteScheduledActionResponse :: Newtype DeleteScheduledActionResponse _
derive instance repGenericDeleteScheduledActionResponse :: Generic DeleteScheduledActionResponse _
instance showDeleteScheduledActionResponse :: Show DeleteScheduledActionResponse where
  show = genericShow
instance decodeDeleteScheduledActionResponse :: Decode DeleteScheduledActionResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteScheduledActionResponse :: Encode DeleteScheduledActionResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DeregisterScalableTargetRequest = DeregisterScalableTargetRequest 
  { "ServiceNamespace" :: (ServiceNamespace)
  , "ResourceId" :: (ResourceIdMaxLen1600)
  , "ScalableDimension" :: (ScalableDimension)
  }
derive instance newtypeDeregisterScalableTargetRequest :: Newtype DeregisterScalableTargetRequest _
derive instance repGenericDeregisterScalableTargetRequest :: Generic DeregisterScalableTargetRequest _
instance showDeregisterScalableTargetRequest :: Show DeregisterScalableTargetRequest where
  show = genericShow
instance decodeDeregisterScalableTargetRequest :: Decode DeregisterScalableTargetRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeregisterScalableTargetRequest :: Encode DeregisterScalableTargetRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeregisterScalableTargetRequest from required parameters
newDeregisterScalableTargetRequest :: ResourceIdMaxLen1600 -> ScalableDimension -> ServiceNamespace -> DeregisterScalableTargetRequest
newDeregisterScalableTargetRequest _ResourceId _ScalableDimension _ServiceNamespace = DeregisterScalableTargetRequest { "ResourceId": _ResourceId, "ScalableDimension": _ScalableDimension, "ServiceNamespace": _ServiceNamespace }

-- | Constructs DeregisterScalableTargetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeregisterScalableTargetRequest' :: ResourceIdMaxLen1600 -> ScalableDimension -> ServiceNamespace -> ( { "ServiceNamespace" :: (ServiceNamespace) , "ResourceId" :: (ResourceIdMaxLen1600) , "ScalableDimension" :: (ScalableDimension) } -> {"ServiceNamespace" :: (ServiceNamespace) , "ResourceId" :: (ResourceIdMaxLen1600) , "ScalableDimension" :: (ScalableDimension) } ) -> DeregisterScalableTargetRequest
newDeregisterScalableTargetRequest' _ResourceId _ScalableDimension _ServiceNamespace customize = (DeregisterScalableTargetRequest <<< customize) { "ResourceId": _ResourceId, "ScalableDimension": _ScalableDimension, "ServiceNamespace": _ServiceNamespace }



newtype DeregisterScalableTargetResponse = DeregisterScalableTargetResponse Types.NoArguments
derive instance newtypeDeregisterScalableTargetResponse :: Newtype DeregisterScalableTargetResponse _
derive instance repGenericDeregisterScalableTargetResponse :: Generic DeregisterScalableTargetResponse _
instance showDeregisterScalableTargetResponse :: Show DeregisterScalableTargetResponse where
  show = genericShow
instance decodeDeregisterScalableTargetResponse :: Decode DeregisterScalableTargetResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeregisterScalableTargetResponse :: Encode DeregisterScalableTargetResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DescribeScalableTargetsRequest = DescribeScalableTargetsRequest 
  { "ServiceNamespace" :: (ServiceNamespace)
  , "ResourceIds" :: NullOrUndefined.NullOrUndefined (ResourceIdsMaxLen1600)
  , "ScalableDimension" :: NullOrUndefined.NullOrUndefined (ScalableDimension)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (XmlString)
  }
derive instance newtypeDescribeScalableTargetsRequest :: Newtype DescribeScalableTargetsRequest _
derive instance repGenericDescribeScalableTargetsRequest :: Generic DescribeScalableTargetsRequest _
instance showDescribeScalableTargetsRequest :: Show DescribeScalableTargetsRequest where
  show = genericShow
instance decodeDescribeScalableTargetsRequest :: Decode DescribeScalableTargetsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeScalableTargetsRequest :: Encode DescribeScalableTargetsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeScalableTargetsRequest from required parameters
newDescribeScalableTargetsRequest :: ServiceNamespace -> DescribeScalableTargetsRequest
newDescribeScalableTargetsRequest _ServiceNamespace = DescribeScalableTargetsRequest { "ServiceNamespace": _ServiceNamespace, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "ResourceIds": (NullOrUndefined Nothing), "ScalableDimension": (NullOrUndefined Nothing) }

-- | Constructs DescribeScalableTargetsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeScalableTargetsRequest' :: ServiceNamespace -> ( { "ServiceNamespace" :: (ServiceNamespace) , "ResourceIds" :: NullOrUndefined.NullOrUndefined (ResourceIdsMaxLen1600) , "ScalableDimension" :: NullOrUndefined.NullOrUndefined (ScalableDimension) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined.NullOrUndefined (XmlString) } -> {"ServiceNamespace" :: (ServiceNamespace) , "ResourceIds" :: NullOrUndefined.NullOrUndefined (ResourceIdsMaxLen1600) , "ScalableDimension" :: NullOrUndefined.NullOrUndefined (ScalableDimension) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined.NullOrUndefined (XmlString) } ) -> DescribeScalableTargetsRequest
newDescribeScalableTargetsRequest' _ServiceNamespace customize = (DescribeScalableTargetsRequest <<< customize) { "ServiceNamespace": _ServiceNamespace, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "ResourceIds": (NullOrUndefined Nothing), "ScalableDimension": (NullOrUndefined Nothing) }



newtype DescribeScalableTargetsResponse = DescribeScalableTargetsResponse 
  { "ScalableTargets" :: NullOrUndefined.NullOrUndefined (ScalableTargets)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (XmlString)
  }
derive instance newtypeDescribeScalableTargetsResponse :: Newtype DescribeScalableTargetsResponse _
derive instance repGenericDescribeScalableTargetsResponse :: Generic DescribeScalableTargetsResponse _
instance showDescribeScalableTargetsResponse :: Show DescribeScalableTargetsResponse where
  show = genericShow
instance decodeDescribeScalableTargetsResponse :: Decode DescribeScalableTargetsResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeScalableTargetsResponse :: Encode DescribeScalableTargetsResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeScalableTargetsResponse from required parameters
newDescribeScalableTargetsResponse :: DescribeScalableTargetsResponse
newDescribeScalableTargetsResponse  = DescribeScalableTargetsResponse { "NextToken": (NullOrUndefined Nothing), "ScalableTargets": (NullOrUndefined Nothing) }

-- | Constructs DescribeScalableTargetsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeScalableTargetsResponse' :: ( { "ScalableTargets" :: NullOrUndefined.NullOrUndefined (ScalableTargets) , "NextToken" :: NullOrUndefined.NullOrUndefined (XmlString) } -> {"ScalableTargets" :: NullOrUndefined.NullOrUndefined (ScalableTargets) , "NextToken" :: NullOrUndefined.NullOrUndefined (XmlString) } ) -> DescribeScalableTargetsResponse
newDescribeScalableTargetsResponse'  customize = (DescribeScalableTargetsResponse <<< customize) { "NextToken": (NullOrUndefined Nothing), "ScalableTargets": (NullOrUndefined Nothing) }



newtype DescribeScalingActivitiesRequest = DescribeScalingActivitiesRequest 
  { "ServiceNamespace" :: (ServiceNamespace)
  , "ResourceId" :: NullOrUndefined.NullOrUndefined (ResourceIdMaxLen1600)
  , "ScalableDimension" :: NullOrUndefined.NullOrUndefined (ScalableDimension)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (XmlString)
  }
derive instance newtypeDescribeScalingActivitiesRequest :: Newtype DescribeScalingActivitiesRequest _
derive instance repGenericDescribeScalingActivitiesRequest :: Generic DescribeScalingActivitiesRequest _
instance showDescribeScalingActivitiesRequest :: Show DescribeScalingActivitiesRequest where
  show = genericShow
instance decodeDescribeScalingActivitiesRequest :: Decode DescribeScalingActivitiesRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeScalingActivitiesRequest :: Encode DescribeScalingActivitiesRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeScalingActivitiesRequest from required parameters
newDescribeScalingActivitiesRequest :: ServiceNamespace -> DescribeScalingActivitiesRequest
newDescribeScalingActivitiesRequest _ServiceNamespace = DescribeScalingActivitiesRequest { "ServiceNamespace": _ServiceNamespace, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "ResourceId": (NullOrUndefined Nothing), "ScalableDimension": (NullOrUndefined Nothing) }

-- | Constructs DescribeScalingActivitiesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeScalingActivitiesRequest' :: ServiceNamespace -> ( { "ServiceNamespace" :: (ServiceNamespace) , "ResourceId" :: NullOrUndefined.NullOrUndefined (ResourceIdMaxLen1600) , "ScalableDimension" :: NullOrUndefined.NullOrUndefined (ScalableDimension) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined.NullOrUndefined (XmlString) } -> {"ServiceNamespace" :: (ServiceNamespace) , "ResourceId" :: NullOrUndefined.NullOrUndefined (ResourceIdMaxLen1600) , "ScalableDimension" :: NullOrUndefined.NullOrUndefined (ScalableDimension) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined.NullOrUndefined (XmlString) } ) -> DescribeScalingActivitiesRequest
newDescribeScalingActivitiesRequest' _ServiceNamespace customize = (DescribeScalingActivitiesRequest <<< customize) { "ServiceNamespace": _ServiceNamespace, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "ResourceId": (NullOrUndefined Nothing), "ScalableDimension": (NullOrUndefined Nothing) }



newtype DescribeScalingActivitiesResponse = DescribeScalingActivitiesResponse 
  { "ScalingActivities" :: NullOrUndefined.NullOrUndefined (ScalingActivities)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (XmlString)
  }
derive instance newtypeDescribeScalingActivitiesResponse :: Newtype DescribeScalingActivitiesResponse _
derive instance repGenericDescribeScalingActivitiesResponse :: Generic DescribeScalingActivitiesResponse _
instance showDescribeScalingActivitiesResponse :: Show DescribeScalingActivitiesResponse where
  show = genericShow
instance decodeDescribeScalingActivitiesResponse :: Decode DescribeScalingActivitiesResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeScalingActivitiesResponse :: Encode DescribeScalingActivitiesResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeScalingActivitiesResponse from required parameters
newDescribeScalingActivitiesResponse :: DescribeScalingActivitiesResponse
newDescribeScalingActivitiesResponse  = DescribeScalingActivitiesResponse { "NextToken": (NullOrUndefined Nothing), "ScalingActivities": (NullOrUndefined Nothing) }

-- | Constructs DescribeScalingActivitiesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeScalingActivitiesResponse' :: ( { "ScalingActivities" :: NullOrUndefined.NullOrUndefined (ScalingActivities) , "NextToken" :: NullOrUndefined.NullOrUndefined (XmlString) } -> {"ScalingActivities" :: NullOrUndefined.NullOrUndefined (ScalingActivities) , "NextToken" :: NullOrUndefined.NullOrUndefined (XmlString) } ) -> DescribeScalingActivitiesResponse
newDescribeScalingActivitiesResponse'  customize = (DescribeScalingActivitiesResponse <<< customize) { "NextToken": (NullOrUndefined Nothing), "ScalingActivities": (NullOrUndefined Nothing) }



newtype DescribeScalingPoliciesRequest = DescribeScalingPoliciesRequest 
  { "PolicyNames" :: NullOrUndefined.NullOrUndefined (ResourceIdsMaxLen1600)
  , "ServiceNamespace" :: (ServiceNamespace)
  , "ResourceId" :: NullOrUndefined.NullOrUndefined (ResourceIdMaxLen1600)
  , "ScalableDimension" :: NullOrUndefined.NullOrUndefined (ScalableDimension)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (XmlString)
  }
derive instance newtypeDescribeScalingPoliciesRequest :: Newtype DescribeScalingPoliciesRequest _
derive instance repGenericDescribeScalingPoliciesRequest :: Generic DescribeScalingPoliciesRequest _
instance showDescribeScalingPoliciesRequest :: Show DescribeScalingPoliciesRequest where
  show = genericShow
instance decodeDescribeScalingPoliciesRequest :: Decode DescribeScalingPoliciesRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeScalingPoliciesRequest :: Encode DescribeScalingPoliciesRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeScalingPoliciesRequest from required parameters
newDescribeScalingPoliciesRequest :: ServiceNamespace -> DescribeScalingPoliciesRequest
newDescribeScalingPoliciesRequest _ServiceNamespace = DescribeScalingPoliciesRequest { "ServiceNamespace": _ServiceNamespace, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "PolicyNames": (NullOrUndefined Nothing), "ResourceId": (NullOrUndefined Nothing), "ScalableDimension": (NullOrUndefined Nothing) }

-- | Constructs DescribeScalingPoliciesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeScalingPoliciesRequest' :: ServiceNamespace -> ( { "PolicyNames" :: NullOrUndefined.NullOrUndefined (ResourceIdsMaxLen1600) , "ServiceNamespace" :: (ServiceNamespace) , "ResourceId" :: NullOrUndefined.NullOrUndefined (ResourceIdMaxLen1600) , "ScalableDimension" :: NullOrUndefined.NullOrUndefined (ScalableDimension) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined.NullOrUndefined (XmlString) } -> {"PolicyNames" :: NullOrUndefined.NullOrUndefined (ResourceIdsMaxLen1600) , "ServiceNamespace" :: (ServiceNamespace) , "ResourceId" :: NullOrUndefined.NullOrUndefined (ResourceIdMaxLen1600) , "ScalableDimension" :: NullOrUndefined.NullOrUndefined (ScalableDimension) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined.NullOrUndefined (XmlString) } ) -> DescribeScalingPoliciesRequest
newDescribeScalingPoliciesRequest' _ServiceNamespace customize = (DescribeScalingPoliciesRequest <<< customize) { "ServiceNamespace": _ServiceNamespace, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "PolicyNames": (NullOrUndefined Nothing), "ResourceId": (NullOrUndefined Nothing), "ScalableDimension": (NullOrUndefined Nothing) }



newtype DescribeScalingPoliciesResponse = DescribeScalingPoliciesResponse 
  { "ScalingPolicies" :: NullOrUndefined.NullOrUndefined (ScalingPolicies)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (XmlString)
  }
derive instance newtypeDescribeScalingPoliciesResponse :: Newtype DescribeScalingPoliciesResponse _
derive instance repGenericDescribeScalingPoliciesResponse :: Generic DescribeScalingPoliciesResponse _
instance showDescribeScalingPoliciesResponse :: Show DescribeScalingPoliciesResponse where
  show = genericShow
instance decodeDescribeScalingPoliciesResponse :: Decode DescribeScalingPoliciesResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeScalingPoliciesResponse :: Encode DescribeScalingPoliciesResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeScalingPoliciesResponse from required parameters
newDescribeScalingPoliciesResponse :: DescribeScalingPoliciesResponse
newDescribeScalingPoliciesResponse  = DescribeScalingPoliciesResponse { "NextToken": (NullOrUndefined Nothing), "ScalingPolicies": (NullOrUndefined Nothing) }

-- | Constructs DescribeScalingPoliciesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeScalingPoliciesResponse' :: ( { "ScalingPolicies" :: NullOrUndefined.NullOrUndefined (ScalingPolicies) , "NextToken" :: NullOrUndefined.NullOrUndefined (XmlString) } -> {"ScalingPolicies" :: NullOrUndefined.NullOrUndefined (ScalingPolicies) , "NextToken" :: NullOrUndefined.NullOrUndefined (XmlString) } ) -> DescribeScalingPoliciesResponse
newDescribeScalingPoliciesResponse'  customize = (DescribeScalingPoliciesResponse <<< customize) { "NextToken": (NullOrUndefined Nothing), "ScalingPolicies": (NullOrUndefined Nothing) }



newtype DescribeScheduledActionsRequest = DescribeScheduledActionsRequest 
  { "ScheduledActionNames" :: NullOrUndefined.NullOrUndefined (ResourceIdsMaxLen1600)
  , "ServiceNamespace" :: (ServiceNamespace)
  , "ResourceId" :: NullOrUndefined.NullOrUndefined (ResourceIdMaxLen1600)
  , "ScalableDimension" :: NullOrUndefined.NullOrUndefined (ScalableDimension)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (XmlString)
  }
derive instance newtypeDescribeScheduledActionsRequest :: Newtype DescribeScheduledActionsRequest _
derive instance repGenericDescribeScheduledActionsRequest :: Generic DescribeScheduledActionsRequest _
instance showDescribeScheduledActionsRequest :: Show DescribeScheduledActionsRequest where
  show = genericShow
instance decodeDescribeScheduledActionsRequest :: Decode DescribeScheduledActionsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeScheduledActionsRequest :: Encode DescribeScheduledActionsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeScheduledActionsRequest from required parameters
newDescribeScheduledActionsRequest :: ServiceNamespace -> DescribeScheduledActionsRequest
newDescribeScheduledActionsRequest _ServiceNamespace = DescribeScheduledActionsRequest { "ServiceNamespace": _ServiceNamespace, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "ResourceId": (NullOrUndefined Nothing), "ScalableDimension": (NullOrUndefined Nothing), "ScheduledActionNames": (NullOrUndefined Nothing) }

-- | Constructs DescribeScheduledActionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeScheduledActionsRequest' :: ServiceNamespace -> ( { "ScheduledActionNames" :: NullOrUndefined.NullOrUndefined (ResourceIdsMaxLen1600) , "ServiceNamespace" :: (ServiceNamespace) , "ResourceId" :: NullOrUndefined.NullOrUndefined (ResourceIdMaxLen1600) , "ScalableDimension" :: NullOrUndefined.NullOrUndefined (ScalableDimension) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined.NullOrUndefined (XmlString) } -> {"ScheduledActionNames" :: NullOrUndefined.NullOrUndefined (ResourceIdsMaxLen1600) , "ServiceNamespace" :: (ServiceNamespace) , "ResourceId" :: NullOrUndefined.NullOrUndefined (ResourceIdMaxLen1600) , "ScalableDimension" :: NullOrUndefined.NullOrUndefined (ScalableDimension) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined.NullOrUndefined (XmlString) } ) -> DescribeScheduledActionsRequest
newDescribeScheduledActionsRequest' _ServiceNamespace customize = (DescribeScheduledActionsRequest <<< customize) { "ServiceNamespace": _ServiceNamespace, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "ResourceId": (NullOrUndefined Nothing), "ScalableDimension": (NullOrUndefined Nothing), "ScheduledActionNames": (NullOrUndefined Nothing) }



newtype DescribeScheduledActionsResponse = DescribeScheduledActionsResponse 
  { "ScheduledActions" :: NullOrUndefined.NullOrUndefined (ScheduledActions)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (XmlString)
  }
derive instance newtypeDescribeScheduledActionsResponse :: Newtype DescribeScheduledActionsResponse _
derive instance repGenericDescribeScheduledActionsResponse :: Generic DescribeScheduledActionsResponse _
instance showDescribeScheduledActionsResponse :: Show DescribeScheduledActionsResponse where
  show = genericShow
instance decodeDescribeScheduledActionsResponse :: Decode DescribeScheduledActionsResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeScheduledActionsResponse :: Encode DescribeScheduledActionsResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeScheduledActionsResponse from required parameters
newDescribeScheduledActionsResponse :: DescribeScheduledActionsResponse
newDescribeScheduledActionsResponse  = DescribeScheduledActionsResponse { "NextToken": (NullOrUndefined Nothing), "ScheduledActions": (NullOrUndefined Nothing) }

-- | Constructs DescribeScheduledActionsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeScheduledActionsResponse' :: ( { "ScheduledActions" :: NullOrUndefined.NullOrUndefined (ScheduledActions) , "NextToken" :: NullOrUndefined.NullOrUndefined (XmlString) } -> {"ScheduledActions" :: NullOrUndefined.NullOrUndefined (ScheduledActions) , "NextToken" :: NullOrUndefined.NullOrUndefined (XmlString) } ) -> DescribeScheduledActionsResponse
newDescribeScheduledActionsResponse'  customize = (DescribeScheduledActionsResponse <<< customize) { "NextToken": (NullOrUndefined Nothing), "ScheduledActions": (NullOrUndefined Nothing) }



newtype DisableScaleIn = DisableScaleIn Boolean
derive instance newtypeDisableScaleIn :: Newtype DisableScaleIn _
derive instance repGenericDisableScaleIn :: Generic DisableScaleIn _
instance showDisableScaleIn :: Show DisableScaleIn where
  show = genericShow
instance decodeDisableScaleIn :: Decode DisableScaleIn where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDisableScaleIn :: Encode DisableScaleIn where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ErrorMessage = ErrorMessage String
derive instance newtypeErrorMessage :: Newtype ErrorMessage _
derive instance repGenericErrorMessage :: Generic ErrorMessage _
instance showErrorMessage :: Show ErrorMessage where
  show = genericShow
instance decodeErrorMessage :: Decode ErrorMessage where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeErrorMessage :: Encode ErrorMessage where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Failed access to resources caused an exception. This exception is thrown when Application Auto Scaling is unable to retrieve the alarms associated with a scaling policy due to a client error, for example, if the role ARN specified for a scalable target does not have permission to call the CloudWatch <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeAlarms.html">DescribeAlarms</a> on your behalf.</p>
newtype FailedResourceAccessException = FailedResourceAccessException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeFailedResourceAccessException :: Newtype FailedResourceAccessException _
derive instance repGenericFailedResourceAccessException :: Generic FailedResourceAccessException _
instance showFailedResourceAccessException :: Show FailedResourceAccessException where
  show = genericShow
instance decodeFailedResourceAccessException :: Decode FailedResourceAccessException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeFailedResourceAccessException :: Encode FailedResourceAccessException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs FailedResourceAccessException from required parameters
newFailedResourceAccessException :: FailedResourceAccessException
newFailedResourceAccessException  = FailedResourceAccessException { "Message": (NullOrUndefined Nothing) }

-- | Constructs FailedResourceAccessException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFailedResourceAccessException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> FailedResourceAccessException
newFailedResourceAccessException'  customize = (FailedResourceAccessException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>The service encountered an internal error.</p>
newtype InternalServiceException = InternalServiceException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInternalServiceException :: Newtype InternalServiceException _
derive instance repGenericInternalServiceException :: Generic InternalServiceException _
instance showInternalServiceException :: Show InternalServiceException where
  show = genericShow
instance decodeInternalServiceException :: Decode InternalServiceException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInternalServiceException :: Encode InternalServiceException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InternalServiceException from required parameters
newInternalServiceException :: InternalServiceException
newInternalServiceException  = InternalServiceException { "Message": (NullOrUndefined Nothing) }

-- | Constructs InternalServiceException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalServiceException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> InternalServiceException
newInternalServiceException'  customize = (InternalServiceException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>The next token supplied was invalid.</p>
newtype InvalidNextTokenException = InvalidNextTokenException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInvalidNextTokenException :: Newtype InvalidNextTokenException _
derive instance repGenericInvalidNextTokenException :: Generic InvalidNextTokenException _
instance showInvalidNextTokenException :: Show InvalidNextTokenException where
  show = genericShow
instance decodeInvalidNextTokenException :: Decode InvalidNextTokenException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidNextTokenException :: Encode InvalidNextTokenException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidNextTokenException from required parameters
newInvalidNextTokenException :: InvalidNextTokenException
newInvalidNextTokenException  = InvalidNextTokenException { "Message": (NullOrUndefined Nothing) }

-- | Constructs InvalidNextTokenException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidNextTokenException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> InvalidNextTokenException
newInvalidNextTokenException'  customize = (InvalidNextTokenException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>A per-account resource limit is exceeded. For more information, see <a href="http://docs.aws.amazon.com/ApplicationAutoScaling/latest/userguide/application-auto-scaling-limits.html">Application Auto Scaling Limits</a>.</p>
newtype LimitExceededException = LimitExceededException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeLimitExceededException :: Newtype LimitExceededException _
derive instance repGenericLimitExceededException :: Generic LimitExceededException _
instance showLimitExceededException :: Show LimitExceededException where
  show = genericShow
instance decodeLimitExceededException :: Decode LimitExceededException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLimitExceededException :: Encode LimitExceededException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs LimitExceededException from required parameters
newLimitExceededException :: LimitExceededException
newLimitExceededException  = LimitExceededException { "Message": (NullOrUndefined Nothing) }

-- | Constructs LimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLimitExceededException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> LimitExceededException
newLimitExceededException'  customize = (LimitExceededException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype MaxResults = MaxResults Int
derive instance newtypeMaxResults :: Newtype MaxResults _
derive instance repGenericMaxResults :: Generic MaxResults _
instance showMaxResults :: Show MaxResults where
  show = genericShow
instance decodeMaxResults :: Decode MaxResults where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMaxResults :: Encode MaxResults where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype MetricAggregationType = MetricAggregationType String
derive instance newtypeMetricAggregationType :: Newtype MetricAggregationType _
derive instance repGenericMetricAggregationType :: Generic MetricAggregationType _
instance showMetricAggregationType :: Show MetricAggregationType where
  show = genericShow
instance decodeMetricAggregationType :: Decode MetricAggregationType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMetricAggregationType :: Encode MetricAggregationType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Describes the dimension of a metric.</p>
newtype MetricDimension = MetricDimension 
  { "Name" :: (MetricDimensionName)
  , "Value" :: (MetricDimensionValue)
  }
derive instance newtypeMetricDimension :: Newtype MetricDimension _
derive instance repGenericMetricDimension :: Generic MetricDimension _
instance showMetricDimension :: Show MetricDimension where
  show = genericShow
instance decodeMetricDimension :: Decode MetricDimension where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMetricDimension :: Encode MetricDimension where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs MetricDimension from required parameters
newMetricDimension :: MetricDimensionName -> MetricDimensionValue -> MetricDimension
newMetricDimension _Name _Value = MetricDimension { "Name": _Name, "Value": _Value }

-- | Constructs MetricDimension's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMetricDimension' :: MetricDimensionName -> MetricDimensionValue -> ( { "Name" :: (MetricDimensionName) , "Value" :: (MetricDimensionValue) } -> {"Name" :: (MetricDimensionName) , "Value" :: (MetricDimensionValue) } ) -> MetricDimension
newMetricDimension' _Name _Value customize = (MetricDimension <<< customize) { "Name": _Name, "Value": _Value }



newtype MetricDimensionName = MetricDimensionName String
derive instance newtypeMetricDimensionName :: Newtype MetricDimensionName _
derive instance repGenericMetricDimensionName :: Generic MetricDimensionName _
instance showMetricDimensionName :: Show MetricDimensionName where
  show = genericShow
instance decodeMetricDimensionName :: Decode MetricDimensionName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMetricDimensionName :: Encode MetricDimensionName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype MetricDimensionValue = MetricDimensionValue String
derive instance newtypeMetricDimensionValue :: Newtype MetricDimensionValue _
derive instance repGenericMetricDimensionValue :: Generic MetricDimensionValue _
instance showMetricDimensionValue :: Show MetricDimensionValue where
  show = genericShow
instance decodeMetricDimensionValue :: Decode MetricDimensionValue where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMetricDimensionValue :: Encode MetricDimensionValue where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype MetricDimensions = MetricDimensions (Array MetricDimension)
derive instance newtypeMetricDimensions :: Newtype MetricDimensions _
derive instance repGenericMetricDimensions :: Generic MetricDimensions _
instance showMetricDimensions :: Show MetricDimensions where
  show = genericShow
instance decodeMetricDimensions :: Decode MetricDimensions where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMetricDimensions :: Encode MetricDimensions where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype MetricName = MetricName String
derive instance newtypeMetricName :: Newtype MetricName _
derive instance repGenericMetricName :: Generic MetricName _
instance showMetricName :: Show MetricName where
  show = genericShow
instance decodeMetricName :: Decode MetricName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMetricName :: Encode MetricName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype MetricNamespace = MetricNamespace String
derive instance newtypeMetricNamespace :: Newtype MetricNamespace _
derive instance repGenericMetricNamespace :: Generic MetricNamespace _
instance showMetricNamespace :: Show MetricNamespace where
  show = genericShow
instance decodeMetricNamespace :: Decode MetricNamespace where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMetricNamespace :: Encode MetricNamespace where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype MetricScale = MetricScale Number
derive instance newtypeMetricScale :: Newtype MetricScale _
derive instance repGenericMetricScale :: Generic MetricScale _
instance showMetricScale :: Show MetricScale where
  show = genericShow
instance decodeMetricScale :: Decode MetricScale where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMetricScale :: Encode MetricScale where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype MetricStatistic = MetricStatistic String
derive instance newtypeMetricStatistic :: Newtype MetricStatistic _
derive instance repGenericMetricStatistic :: Generic MetricStatistic _
instance showMetricStatistic :: Show MetricStatistic where
  show = genericShow
instance decodeMetricStatistic :: Decode MetricStatistic where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMetricStatistic :: Encode MetricStatistic where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype MetricType = MetricType String
derive instance newtypeMetricType :: Newtype MetricType _
derive instance repGenericMetricType :: Generic MetricType _
instance showMetricType :: Show MetricType where
  show = genericShow
instance decodeMetricType :: Decode MetricType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMetricType :: Encode MetricType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype MetricUnit = MetricUnit String
derive instance newtypeMetricUnit :: Newtype MetricUnit _
derive instance repGenericMetricUnit :: Generic MetricUnit _
instance showMetricUnit :: Show MetricUnit where
  show = genericShow
instance decodeMetricUnit :: Decode MetricUnit where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMetricUnit :: Encode MetricUnit where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype MinAdjustmentMagnitude = MinAdjustmentMagnitude Int
derive instance newtypeMinAdjustmentMagnitude :: Newtype MinAdjustmentMagnitude _
derive instance repGenericMinAdjustmentMagnitude :: Generic MinAdjustmentMagnitude _
instance showMinAdjustmentMagnitude :: Show MinAdjustmentMagnitude where
  show = genericShow
instance decodeMinAdjustmentMagnitude :: Decode MinAdjustmentMagnitude where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMinAdjustmentMagnitude :: Encode MinAdjustmentMagnitude where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The specified object could not be found. For any operation that depends on the existence of a scalable target, this exception is thrown if the scalable target with the specified service namespace, resource ID, and scalable dimension does not exist. For any operation that deletes or deregisters a resource, this exception is thrown if the resource cannot be found.</p>
newtype ObjectNotFoundException = ObjectNotFoundException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeObjectNotFoundException :: Newtype ObjectNotFoundException _
derive instance repGenericObjectNotFoundException :: Generic ObjectNotFoundException _
instance showObjectNotFoundException :: Show ObjectNotFoundException where
  show = genericShow
instance decodeObjectNotFoundException :: Decode ObjectNotFoundException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeObjectNotFoundException :: Encode ObjectNotFoundException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ObjectNotFoundException from required parameters
newObjectNotFoundException :: ObjectNotFoundException
newObjectNotFoundException  = ObjectNotFoundException { "Message": (NullOrUndefined Nothing) }

-- | Constructs ObjectNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newObjectNotFoundException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> ObjectNotFoundException
newObjectNotFoundException'  customize = (ObjectNotFoundException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype PolicyName = PolicyName String
derive instance newtypePolicyName :: Newtype PolicyName _
derive instance repGenericPolicyName :: Generic PolicyName _
instance showPolicyName :: Show PolicyName where
  show = genericShow
instance decodePolicyName :: Decode PolicyName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyName :: Encode PolicyName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PolicyType = PolicyType String
derive instance newtypePolicyType :: Newtype PolicyType _
derive instance repGenericPolicyType :: Generic PolicyType _
instance showPolicyType :: Show PolicyType where
  show = genericShow
instance decodePolicyType :: Decode PolicyType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyType :: Encode PolicyType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Configures a predefined metric for a target tracking policy.</p>
newtype PredefinedMetricSpecification = PredefinedMetricSpecification 
  { "PredefinedMetricType" :: (MetricType)
  , "ResourceLabel" :: NullOrUndefined.NullOrUndefined (ResourceLabel)
  }
derive instance newtypePredefinedMetricSpecification :: Newtype PredefinedMetricSpecification _
derive instance repGenericPredefinedMetricSpecification :: Generic PredefinedMetricSpecification _
instance showPredefinedMetricSpecification :: Show PredefinedMetricSpecification where
  show = genericShow
instance decodePredefinedMetricSpecification :: Decode PredefinedMetricSpecification where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePredefinedMetricSpecification :: Encode PredefinedMetricSpecification where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PredefinedMetricSpecification from required parameters
newPredefinedMetricSpecification :: MetricType -> PredefinedMetricSpecification
newPredefinedMetricSpecification _PredefinedMetricType = PredefinedMetricSpecification { "PredefinedMetricType": _PredefinedMetricType, "ResourceLabel": (NullOrUndefined Nothing) }

-- | Constructs PredefinedMetricSpecification's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPredefinedMetricSpecification' :: MetricType -> ( { "PredefinedMetricType" :: (MetricType) , "ResourceLabel" :: NullOrUndefined.NullOrUndefined (ResourceLabel) } -> {"PredefinedMetricType" :: (MetricType) , "ResourceLabel" :: NullOrUndefined.NullOrUndefined (ResourceLabel) } ) -> PredefinedMetricSpecification
newPredefinedMetricSpecification' _PredefinedMetricType customize = (PredefinedMetricSpecification <<< customize) { "PredefinedMetricType": _PredefinedMetricType, "ResourceLabel": (NullOrUndefined Nothing) }



newtype PutScalingPolicyRequest = PutScalingPolicyRequest 
  { "PolicyName" :: (PolicyName)
  , "ServiceNamespace" :: (ServiceNamespace)
  , "ResourceId" :: (ResourceIdMaxLen1600)
  , "ScalableDimension" :: (ScalableDimension)
  , "PolicyType" :: NullOrUndefined.NullOrUndefined (PolicyType)
  , "StepScalingPolicyConfiguration" :: NullOrUndefined.NullOrUndefined (StepScalingPolicyConfiguration)
  , "TargetTrackingScalingPolicyConfiguration" :: NullOrUndefined.NullOrUndefined (TargetTrackingScalingPolicyConfiguration)
  }
derive instance newtypePutScalingPolicyRequest :: Newtype PutScalingPolicyRequest _
derive instance repGenericPutScalingPolicyRequest :: Generic PutScalingPolicyRequest _
instance showPutScalingPolicyRequest :: Show PutScalingPolicyRequest where
  show = genericShow
instance decodePutScalingPolicyRequest :: Decode PutScalingPolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePutScalingPolicyRequest :: Encode PutScalingPolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PutScalingPolicyRequest from required parameters
newPutScalingPolicyRequest :: PolicyName -> ResourceIdMaxLen1600 -> ScalableDimension -> ServiceNamespace -> PutScalingPolicyRequest
newPutScalingPolicyRequest _PolicyName _ResourceId _ScalableDimension _ServiceNamespace = PutScalingPolicyRequest { "PolicyName": _PolicyName, "ResourceId": _ResourceId, "ScalableDimension": _ScalableDimension, "ServiceNamespace": _ServiceNamespace, "PolicyType": (NullOrUndefined Nothing), "StepScalingPolicyConfiguration": (NullOrUndefined Nothing), "TargetTrackingScalingPolicyConfiguration": (NullOrUndefined Nothing) }

-- | Constructs PutScalingPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutScalingPolicyRequest' :: PolicyName -> ResourceIdMaxLen1600 -> ScalableDimension -> ServiceNamespace -> ( { "PolicyName" :: (PolicyName) , "ServiceNamespace" :: (ServiceNamespace) , "ResourceId" :: (ResourceIdMaxLen1600) , "ScalableDimension" :: (ScalableDimension) , "PolicyType" :: NullOrUndefined.NullOrUndefined (PolicyType) , "StepScalingPolicyConfiguration" :: NullOrUndefined.NullOrUndefined (StepScalingPolicyConfiguration) , "TargetTrackingScalingPolicyConfiguration" :: NullOrUndefined.NullOrUndefined (TargetTrackingScalingPolicyConfiguration) } -> {"PolicyName" :: (PolicyName) , "ServiceNamespace" :: (ServiceNamespace) , "ResourceId" :: (ResourceIdMaxLen1600) , "ScalableDimension" :: (ScalableDimension) , "PolicyType" :: NullOrUndefined.NullOrUndefined (PolicyType) , "StepScalingPolicyConfiguration" :: NullOrUndefined.NullOrUndefined (StepScalingPolicyConfiguration) , "TargetTrackingScalingPolicyConfiguration" :: NullOrUndefined.NullOrUndefined (TargetTrackingScalingPolicyConfiguration) } ) -> PutScalingPolicyRequest
newPutScalingPolicyRequest' _PolicyName _ResourceId _ScalableDimension _ServiceNamespace customize = (PutScalingPolicyRequest <<< customize) { "PolicyName": _PolicyName, "ResourceId": _ResourceId, "ScalableDimension": _ScalableDimension, "ServiceNamespace": _ServiceNamespace, "PolicyType": (NullOrUndefined Nothing), "StepScalingPolicyConfiguration": (NullOrUndefined Nothing), "TargetTrackingScalingPolicyConfiguration": (NullOrUndefined Nothing) }



newtype PutScalingPolicyResponse = PutScalingPolicyResponse 
  { "PolicyARN" :: (ResourceIdMaxLen1600)
  , "Alarms" :: NullOrUndefined.NullOrUndefined (Alarms)
  }
derive instance newtypePutScalingPolicyResponse :: Newtype PutScalingPolicyResponse _
derive instance repGenericPutScalingPolicyResponse :: Generic PutScalingPolicyResponse _
instance showPutScalingPolicyResponse :: Show PutScalingPolicyResponse where
  show = genericShow
instance decodePutScalingPolicyResponse :: Decode PutScalingPolicyResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePutScalingPolicyResponse :: Encode PutScalingPolicyResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PutScalingPolicyResponse from required parameters
newPutScalingPolicyResponse :: ResourceIdMaxLen1600 -> PutScalingPolicyResponse
newPutScalingPolicyResponse _PolicyARN = PutScalingPolicyResponse { "PolicyARN": _PolicyARN, "Alarms": (NullOrUndefined Nothing) }

-- | Constructs PutScalingPolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutScalingPolicyResponse' :: ResourceIdMaxLen1600 -> ( { "PolicyARN" :: (ResourceIdMaxLen1600) , "Alarms" :: NullOrUndefined.NullOrUndefined (Alarms) } -> {"PolicyARN" :: (ResourceIdMaxLen1600) , "Alarms" :: NullOrUndefined.NullOrUndefined (Alarms) } ) -> PutScalingPolicyResponse
newPutScalingPolicyResponse' _PolicyARN customize = (PutScalingPolicyResponse <<< customize) { "PolicyARN": _PolicyARN, "Alarms": (NullOrUndefined Nothing) }



newtype PutScheduledActionRequest = PutScheduledActionRequest 
  { "ServiceNamespace" :: (ServiceNamespace)
  , "Schedule" :: NullOrUndefined.NullOrUndefined (ResourceIdMaxLen1600)
  , "ScheduledActionName" :: (ScheduledActionName)
  , "ResourceId" :: (ResourceIdMaxLen1600)
  , "ScalableDimension" :: NullOrUndefined.NullOrUndefined (ScalableDimension)
  , "StartTime" :: NullOrUndefined.NullOrUndefined (TimestampType)
  , "EndTime" :: NullOrUndefined.NullOrUndefined (TimestampType)
  , "ScalableTargetAction" :: NullOrUndefined.NullOrUndefined (ScalableTargetAction)
  }
derive instance newtypePutScheduledActionRequest :: Newtype PutScheduledActionRequest _
derive instance repGenericPutScheduledActionRequest :: Generic PutScheduledActionRequest _
instance showPutScheduledActionRequest :: Show PutScheduledActionRequest where
  show = genericShow
instance decodePutScheduledActionRequest :: Decode PutScheduledActionRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePutScheduledActionRequest :: Encode PutScheduledActionRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PutScheduledActionRequest from required parameters
newPutScheduledActionRequest :: ResourceIdMaxLen1600 -> ScheduledActionName -> ServiceNamespace -> PutScheduledActionRequest
newPutScheduledActionRequest _ResourceId _ScheduledActionName _ServiceNamespace = PutScheduledActionRequest { "ResourceId": _ResourceId, "ScheduledActionName": _ScheduledActionName, "ServiceNamespace": _ServiceNamespace, "EndTime": (NullOrUndefined Nothing), "ScalableDimension": (NullOrUndefined Nothing), "ScalableTargetAction": (NullOrUndefined Nothing), "Schedule": (NullOrUndefined Nothing), "StartTime": (NullOrUndefined Nothing) }

-- | Constructs PutScheduledActionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutScheduledActionRequest' :: ResourceIdMaxLen1600 -> ScheduledActionName -> ServiceNamespace -> ( { "ServiceNamespace" :: (ServiceNamespace) , "Schedule" :: NullOrUndefined.NullOrUndefined (ResourceIdMaxLen1600) , "ScheduledActionName" :: (ScheduledActionName) , "ResourceId" :: (ResourceIdMaxLen1600) , "ScalableDimension" :: NullOrUndefined.NullOrUndefined (ScalableDimension) , "StartTime" :: NullOrUndefined.NullOrUndefined (TimestampType) , "EndTime" :: NullOrUndefined.NullOrUndefined (TimestampType) , "ScalableTargetAction" :: NullOrUndefined.NullOrUndefined (ScalableTargetAction) } -> {"ServiceNamespace" :: (ServiceNamespace) , "Schedule" :: NullOrUndefined.NullOrUndefined (ResourceIdMaxLen1600) , "ScheduledActionName" :: (ScheduledActionName) , "ResourceId" :: (ResourceIdMaxLen1600) , "ScalableDimension" :: NullOrUndefined.NullOrUndefined (ScalableDimension) , "StartTime" :: NullOrUndefined.NullOrUndefined (TimestampType) , "EndTime" :: NullOrUndefined.NullOrUndefined (TimestampType) , "ScalableTargetAction" :: NullOrUndefined.NullOrUndefined (ScalableTargetAction) } ) -> PutScheduledActionRequest
newPutScheduledActionRequest' _ResourceId _ScheduledActionName _ServiceNamespace customize = (PutScheduledActionRequest <<< customize) { "ResourceId": _ResourceId, "ScheduledActionName": _ScheduledActionName, "ServiceNamespace": _ServiceNamespace, "EndTime": (NullOrUndefined Nothing), "ScalableDimension": (NullOrUndefined Nothing), "ScalableTargetAction": (NullOrUndefined Nothing), "Schedule": (NullOrUndefined Nothing), "StartTime": (NullOrUndefined Nothing) }



newtype PutScheduledActionResponse = PutScheduledActionResponse Types.NoArguments
derive instance newtypePutScheduledActionResponse :: Newtype PutScheduledActionResponse _
derive instance repGenericPutScheduledActionResponse :: Generic PutScheduledActionResponse _
instance showPutScheduledActionResponse :: Show PutScheduledActionResponse where
  show = genericShow
instance decodePutScheduledActionResponse :: Decode PutScheduledActionResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePutScheduledActionResponse :: Encode PutScheduledActionResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype RegisterScalableTargetRequest = RegisterScalableTargetRequest 
  { "ServiceNamespace" :: (ServiceNamespace)
  , "ResourceId" :: (ResourceIdMaxLen1600)
  , "ScalableDimension" :: (ScalableDimension)
  , "MinCapacity" :: NullOrUndefined.NullOrUndefined (ResourceCapacity)
  , "MaxCapacity" :: NullOrUndefined.NullOrUndefined (ResourceCapacity)
  , "RoleARN" :: NullOrUndefined.NullOrUndefined (ResourceIdMaxLen1600)
  }
derive instance newtypeRegisterScalableTargetRequest :: Newtype RegisterScalableTargetRequest _
derive instance repGenericRegisterScalableTargetRequest :: Generic RegisterScalableTargetRequest _
instance showRegisterScalableTargetRequest :: Show RegisterScalableTargetRequest where
  show = genericShow
instance decodeRegisterScalableTargetRequest :: Decode RegisterScalableTargetRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRegisterScalableTargetRequest :: Encode RegisterScalableTargetRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs RegisterScalableTargetRequest from required parameters
newRegisterScalableTargetRequest :: ResourceIdMaxLen1600 -> ScalableDimension -> ServiceNamespace -> RegisterScalableTargetRequest
newRegisterScalableTargetRequest _ResourceId _ScalableDimension _ServiceNamespace = RegisterScalableTargetRequest { "ResourceId": _ResourceId, "ScalableDimension": _ScalableDimension, "ServiceNamespace": _ServiceNamespace, "MaxCapacity": (NullOrUndefined Nothing), "MinCapacity": (NullOrUndefined Nothing), "RoleARN": (NullOrUndefined Nothing) }

-- | Constructs RegisterScalableTargetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterScalableTargetRequest' :: ResourceIdMaxLen1600 -> ScalableDimension -> ServiceNamespace -> ( { "ServiceNamespace" :: (ServiceNamespace) , "ResourceId" :: (ResourceIdMaxLen1600) , "ScalableDimension" :: (ScalableDimension) , "MinCapacity" :: NullOrUndefined.NullOrUndefined (ResourceCapacity) , "MaxCapacity" :: NullOrUndefined.NullOrUndefined (ResourceCapacity) , "RoleARN" :: NullOrUndefined.NullOrUndefined (ResourceIdMaxLen1600) } -> {"ServiceNamespace" :: (ServiceNamespace) , "ResourceId" :: (ResourceIdMaxLen1600) , "ScalableDimension" :: (ScalableDimension) , "MinCapacity" :: NullOrUndefined.NullOrUndefined (ResourceCapacity) , "MaxCapacity" :: NullOrUndefined.NullOrUndefined (ResourceCapacity) , "RoleARN" :: NullOrUndefined.NullOrUndefined (ResourceIdMaxLen1600) } ) -> RegisterScalableTargetRequest
newRegisterScalableTargetRequest' _ResourceId _ScalableDimension _ServiceNamespace customize = (RegisterScalableTargetRequest <<< customize) { "ResourceId": _ResourceId, "ScalableDimension": _ScalableDimension, "ServiceNamespace": _ServiceNamespace, "MaxCapacity": (NullOrUndefined Nothing), "MinCapacity": (NullOrUndefined Nothing), "RoleARN": (NullOrUndefined Nothing) }



newtype RegisterScalableTargetResponse = RegisterScalableTargetResponse Types.NoArguments
derive instance newtypeRegisterScalableTargetResponse :: Newtype RegisterScalableTargetResponse _
derive instance repGenericRegisterScalableTargetResponse :: Generic RegisterScalableTargetResponse _
instance showRegisterScalableTargetResponse :: Show RegisterScalableTargetResponse where
  show = genericShow
instance decodeRegisterScalableTargetResponse :: Decode RegisterScalableTargetResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRegisterScalableTargetResponse :: Encode RegisterScalableTargetResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ResourceCapacity = ResourceCapacity Int
derive instance newtypeResourceCapacity :: Newtype ResourceCapacity _
derive instance repGenericResourceCapacity :: Generic ResourceCapacity _
instance showResourceCapacity :: Show ResourceCapacity where
  show = genericShow
instance decodeResourceCapacity :: Decode ResourceCapacity where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceCapacity :: Encode ResourceCapacity where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ResourceId = ResourceId String
derive instance newtypeResourceId :: Newtype ResourceId _
derive instance repGenericResourceId :: Generic ResourceId _
instance showResourceId :: Show ResourceId where
  show = genericShow
instance decodeResourceId :: Decode ResourceId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceId :: Encode ResourceId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ResourceIdMaxLen1600 = ResourceIdMaxLen1600 String
derive instance newtypeResourceIdMaxLen1600 :: Newtype ResourceIdMaxLen1600 _
derive instance repGenericResourceIdMaxLen1600 :: Generic ResourceIdMaxLen1600 _
instance showResourceIdMaxLen1600 :: Show ResourceIdMaxLen1600 where
  show = genericShow
instance decodeResourceIdMaxLen1600 :: Decode ResourceIdMaxLen1600 where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceIdMaxLen1600 :: Encode ResourceIdMaxLen1600 where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ResourceIdsMaxLen1600 = ResourceIdsMaxLen1600 (Array ResourceIdMaxLen1600)
derive instance newtypeResourceIdsMaxLen1600 :: Newtype ResourceIdsMaxLen1600 _
derive instance repGenericResourceIdsMaxLen1600 :: Generic ResourceIdsMaxLen1600 _
instance showResourceIdsMaxLen1600 :: Show ResourceIdsMaxLen1600 where
  show = genericShow
instance decodeResourceIdsMaxLen1600 :: Decode ResourceIdsMaxLen1600 where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceIdsMaxLen1600 :: Encode ResourceIdsMaxLen1600 where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ResourceLabel = ResourceLabel String
derive instance newtypeResourceLabel :: Newtype ResourceLabel _
derive instance repGenericResourceLabel :: Generic ResourceLabel _
instance showResourceLabel :: Show ResourceLabel where
  show = genericShow
instance decodeResourceLabel :: Decode ResourceLabel where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceLabel :: Encode ResourceLabel where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ScalableDimension = ScalableDimension String
derive instance newtypeScalableDimension :: Newtype ScalableDimension _
derive instance repGenericScalableDimension :: Generic ScalableDimension _
instance showScalableDimension :: Show ScalableDimension where
  show = genericShow
instance decodeScalableDimension :: Decode ScalableDimension where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeScalableDimension :: Encode ScalableDimension where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Represents a scalable target.</p>
newtype ScalableTarget = ScalableTarget 
  { "ServiceNamespace" :: (ServiceNamespace)
  , "ResourceId" :: (ResourceIdMaxLen1600)
  , "ScalableDimension" :: (ScalableDimension)
  , "MinCapacity" :: (ResourceCapacity)
  , "MaxCapacity" :: (ResourceCapacity)
  , "RoleARN" :: (ResourceIdMaxLen1600)
  , "CreationTime" :: (TimestampType)
  }
derive instance newtypeScalableTarget :: Newtype ScalableTarget _
derive instance repGenericScalableTarget :: Generic ScalableTarget _
instance showScalableTarget :: Show ScalableTarget where
  show = genericShow
instance decodeScalableTarget :: Decode ScalableTarget where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeScalableTarget :: Encode ScalableTarget where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ScalableTarget from required parameters
newScalableTarget :: TimestampType -> ResourceCapacity -> ResourceCapacity -> ResourceIdMaxLen1600 -> ResourceIdMaxLen1600 -> ScalableDimension -> ServiceNamespace -> ScalableTarget
newScalableTarget _CreationTime _MaxCapacity _MinCapacity _ResourceId _RoleARN _ScalableDimension _ServiceNamespace = ScalableTarget { "CreationTime": _CreationTime, "MaxCapacity": _MaxCapacity, "MinCapacity": _MinCapacity, "ResourceId": _ResourceId, "RoleARN": _RoleARN, "ScalableDimension": _ScalableDimension, "ServiceNamespace": _ServiceNamespace }

-- | Constructs ScalableTarget's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newScalableTarget' :: TimestampType -> ResourceCapacity -> ResourceCapacity -> ResourceIdMaxLen1600 -> ResourceIdMaxLen1600 -> ScalableDimension -> ServiceNamespace -> ( { "ServiceNamespace" :: (ServiceNamespace) , "ResourceId" :: (ResourceIdMaxLen1600) , "ScalableDimension" :: (ScalableDimension) , "MinCapacity" :: (ResourceCapacity) , "MaxCapacity" :: (ResourceCapacity) , "RoleARN" :: (ResourceIdMaxLen1600) , "CreationTime" :: (TimestampType) } -> {"ServiceNamespace" :: (ServiceNamespace) , "ResourceId" :: (ResourceIdMaxLen1600) , "ScalableDimension" :: (ScalableDimension) , "MinCapacity" :: (ResourceCapacity) , "MaxCapacity" :: (ResourceCapacity) , "RoleARN" :: (ResourceIdMaxLen1600) , "CreationTime" :: (TimestampType) } ) -> ScalableTarget
newScalableTarget' _CreationTime _MaxCapacity _MinCapacity _ResourceId _RoleARN _ScalableDimension _ServiceNamespace customize = (ScalableTarget <<< customize) { "CreationTime": _CreationTime, "MaxCapacity": _MaxCapacity, "MinCapacity": _MinCapacity, "ResourceId": _ResourceId, "RoleARN": _RoleARN, "ScalableDimension": _ScalableDimension, "ServiceNamespace": _ServiceNamespace }



-- | <p>Represents the minimum and maximum capacity for a scheduled action.</p>
newtype ScalableTargetAction = ScalableTargetAction 
  { "MinCapacity" :: NullOrUndefined.NullOrUndefined (ResourceCapacity)
  , "MaxCapacity" :: NullOrUndefined.NullOrUndefined (ResourceCapacity)
  }
derive instance newtypeScalableTargetAction :: Newtype ScalableTargetAction _
derive instance repGenericScalableTargetAction :: Generic ScalableTargetAction _
instance showScalableTargetAction :: Show ScalableTargetAction where
  show = genericShow
instance decodeScalableTargetAction :: Decode ScalableTargetAction where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeScalableTargetAction :: Encode ScalableTargetAction where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ScalableTargetAction from required parameters
newScalableTargetAction :: ScalableTargetAction
newScalableTargetAction  = ScalableTargetAction { "MaxCapacity": (NullOrUndefined Nothing), "MinCapacity": (NullOrUndefined Nothing) }

-- | Constructs ScalableTargetAction's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newScalableTargetAction' :: ( { "MinCapacity" :: NullOrUndefined.NullOrUndefined (ResourceCapacity) , "MaxCapacity" :: NullOrUndefined.NullOrUndefined (ResourceCapacity) } -> {"MinCapacity" :: NullOrUndefined.NullOrUndefined (ResourceCapacity) , "MaxCapacity" :: NullOrUndefined.NullOrUndefined (ResourceCapacity) } ) -> ScalableTargetAction
newScalableTargetAction'  customize = (ScalableTargetAction <<< customize) { "MaxCapacity": (NullOrUndefined Nothing), "MinCapacity": (NullOrUndefined Nothing) }



newtype ScalableTargets = ScalableTargets (Array ScalableTarget)
derive instance newtypeScalableTargets :: Newtype ScalableTargets _
derive instance repGenericScalableTargets :: Generic ScalableTargets _
instance showScalableTargets :: Show ScalableTargets where
  show = genericShow
instance decodeScalableTargets :: Decode ScalableTargets where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeScalableTargets :: Encode ScalableTargets where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ScalingActivities = ScalingActivities (Array ScalingActivity)
derive instance newtypeScalingActivities :: Newtype ScalingActivities _
derive instance repGenericScalingActivities :: Generic ScalingActivities _
instance showScalingActivities :: Show ScalingActivities where
  show = genericShow
instance decodeScalingActivities :: Decode ScalingActivities where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeScalingActivities :: Encode ScalingActivities where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Represents a scaling activity.</p>
newtype ScalingActivity = ScalingActivity 
  { "ActivityId" :: (ResourceId)
  , "ServiceNamespace" :: (ServiceNamespace)
  , "ResourceId" :: (ResourceIdMaxLen1600)
  , "ScalableDimension" :: (ScalableDimension)
  , "Description" :: (XmlString)
  , "Cause" :: (XmlString)
  , "StartTime" :: (TimestampType)
  , "EndTime" :: NullOrUndefined.NullOrUndefined (TimestampType)
  , "StatusCode" :: (ScalingActivityStatusCode)
  , "StatusMessage" :: NullOrUndefined.NullOrUndefined (XmlString)
  , "Details" :: NullOrUndefined.NullOrUndefined (XmlString)
  }
derive instance newtypeScalingActivity :: Newtype ScalingActivity _
derive instance repGenericScalingActivity :: Generic ScalingActivity _
instance showScalingActivity :: Show ScalingActivity where
  show = genericShow
instance decodeScalingActivity :: Decode ScalingActivity where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeScalingActivity :: Encode ScalingActivity where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ScalingActivity from required parameters
newScalingActivity :: ResourceId -> XmlString -> XmlString -> ResourceIdMaxLen1600 -> ScalableDimension -> ServiceNamespace -> TimestampType -> ScalingActivityStatusCode -> ScalingActivity
newScalingActivity _ActivityId _Cause _Description _ResourceId _ScalableDimension _ServiceNamespace _StartTime _StatusCode = ScalingActivity { "ActivityId": _ActivityId, "Cause": _Cause, "Description": _Description, "ResourceId": _ResourceId, "ScalableDimension": _ScalableDimension, "ServiceNamespace": _ServiceNamespace, "StartTime": _StartTime, "StatusCode": _StatusCode, "Details": (NullOrUndefined Nothing), "EndTime": (NullOrUndefined Nothing), "StatusMessage": (NullOrUndefined Nothing) }

-- | Constructs ScalingActivity's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newScalingActivity' :: ResourceId -> XmlString -> XmlString -> ResourceIdMaxLen1600 -> ScalableDimension -> ServiceNamespace -> TimestampType -> ScalingActivityStatusCode -> ( { "ActivityId" :: (ResourceId) , "ServiceNamespace" :: (ServiceNamespace) , "ResourceId" :: (ResourceIdMaxLen1600) , "ScalableDimension" :: (ScalableDimension) , "Description" :: (XmlString) , "Cause" :: (XmlString) , "StartTime" :: (TimestampType) , "EndTime" :: NullOrUndefined.NullOrUndefined (TimestampType) , "StatusCode" :: (ScalingActivityStatusCode) , "StatusMessage" :: NullOrUndefined.NullOrUndefined (XmlString) , "Details" :: NullOrUndefined.NullOrUndefined (XmlString) } -> {"ActivityId" :: (ResourceId) , "ServiceNamespace" :: (ServiceNamespace) , "ResourceId" :: (ResourceIdMaxLen1600) , "ScalableDimension" :: (ScalableDimension) , "Description" :: (XmlString) , "Cause" :: (XmlString) , "StartTime" :: (TimestampType) , "EndTime" :: NullOrUndefined.NullOrUndefined (TimestampType) , "StatusCode" :: (ScalingActivityStatusCode) , "StatusMessage" :: NullOrUndefined.NullOrUndefined (XmlString) , "Details" :: NullOrUndefined.NullOrUndefined (XmlString) } ) -> ScalingActivity
newScalingActivity' _ActivityId _Cause _Description _ResourceId _ScalableDimension _ServiceNamespace _StartTime _StatusCode customize = (ScalingActivity <<< customize) { "ActivityId": _ActivityId, "Cause": _Cause, "Description": _Description, "ResourceId": _ResourceId, "ScalableDimension": _ScalableDimension, "ServiceNamespace": _ServiceNamespace, "StartTime": _StartTime, "StatusCode": _StatusCode, "Details": (NullOrUndefined Nothing), "EndTime": (NullOrUndefined Nothing), "StatusMessage": (NullOrUndefined Nothing) }



newtype ScalingActivityStatusCode = ScalingActivityStatusCode String
derive instance newtypeScalingActivityStatusCode :: Newtype ScalingActivityStatusCode _
derive instance repGenericScalingActivityStatusCode :: Generic ScalingActivityStatusCode _
instance showScalingActivityStatusCode :: Show ScalingActivityStatusCode where
  show = genericShow
instance decodeScalingActivityStatusCode :: Decode ScalingActivityStatusCode where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeScalingActivityStatusCode :: Encode ScalingActivityStatusCode where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ScalingAdjustment = ScalingAdjustment Int
derive instance newtypeScalingAdjustment :: Newtype ScalingAdjustment _
derive instance repGenericScalingAdjustment :: Generic ScalingAdjustment _
instance showScalingAdjustment :: Show ScalingAdjustment where
  show = genericShow
instance decodeScalingAdjustment :: Decode ScalingAdjustment where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeScalingAdjustment :: Encode ScalingAdjustment where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ScalingPolicies = ScalingPolicies (Array ScalingPolicy)
derive instance newtypeScalingPolicies :: Newtype ScalingPolicies _
derive instance repGenericScalingPolicies :: Generic ScalingPolicies _
instance showScalingPolicies :: Show ScalingPolicies where
  show = genericShow
instance decodeScalingPolicies :: Decode ScalingPolicies where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeScalingPolicies :: Encode ScalingPolicies where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Represents a scaling policy.</p>
newtype ScalingPolicy = ScalingPolicy 
  { "PolicyARN" :: (ResourceIdMaxLen1600)
  , "PolicyName" :: (PolicyName)
  , "ServiceNamespace" :: (ServiceNamespace)
  , "ResourceId" :: (ResourceIdMaxLen1600)
  , "ScalableDimension" :: (ScalableDimension)
  , "PolicyType" :: (PolicyType)
  , "StepScalingPolicyConfiguration" :: NullOrUndefined.NullOrUndefined (StepScalingPolicyConfiguration)
  , "TargetTrackingScalingPolicyConfiguration" :: NullOrUndefined.NullOrUndefined (TargetTrackingScalingPolicyConfiguration)
  , "Alarms" :: NullOrUndefined.NullOrUndefined (Alarms)
  , "CreationTime" :: (TimestampType)
  }
derive instance newtypeScalingPolicy :: Newtype ScalingPolicy _
derive instance repGenericScalingPolicy :: Generic ScalingPolicy _
instance showScalingPolicy :: Show ScalingPolicy where
  show = genericShow
instance decodeScalingPolicy :: Decode ScalingPolicy where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeScalingPolicy :: Encode ScalingPolicy where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ScalingPolicy from required parameters
newScalingPolicy :: TimestampType -> ResourceIdMaxLen1600 -> PolicyName -> PolicyType -> ResourceIdMaxLen1600 -> ScalableDimension -> ServiceNamespace -> ScalingPolicy
newScalingPolicy _CreationTime _PolicyARN _PolicyName _PolicyType _ResourceId _ScalableDimension _ServiceNamespace = ScalingPolicy { "CreationTime": _CreationTime, "PolicyARN": _PolicyARN, "PolicyName": _PolicyName, "PolicyType": _PolicyType, "ResourceId": _ResourceId, "ScalableDimension": _ScalableDimension, "ServiceNamespace": _ServiceNamespace, "Alarms": (NullOrUndefined Nothing), "StepScalingPolicyConfiguration": (NullOrUndefined Nothing), "TargetTrackingScalingPolicyConfiguration": (NullOrUndefined Nothing) }

-- | Constructs ScalingPolicy's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newScalingPolicy' :: TimestampType -> ResourceIdMaxLen1600 -> PolicyName -> PolicyType -> ResourceIdMaxLen1600 -> ScalableDimension -> ServiceNamespace -> ( { "PolicyARN" :: (ResourceIdMaxLen1600) , "PolicyName" :: (PolicyName) , "ServiceNamespace" :: (ServiceNamespace) , "ResourceId" :: (ResourceIdMaxLen1600) , "ScalableDimension" :: (ScalableDimension) , "PolicyType" :: (PolicyType) , "StepScalingPolicyConfiguration" :: NullOrUndefined.NullOrUndefined (StepScalingPolicyConfiguration) , "TargetTrackingScalingPolicyConfiguration" :: NullOrUndefined.NullOrUndefined (TargetTrackingScalingPolicyConfiguration) , "Alarms" :: NullOrUndefined.NullOrUndefined (Alarms) , "CreationTime" :: (TimestampType) } -> {"PolicyARN" :: (ResourceIdMaxLen1600) , "PolicyName" :: (PolicyName) , "ServiceNamespace" :: (ServiceNamespace) , "ResourceId" :: (ResourceIdMaxLen1600) , "ScalableDimension" :: (ScalableDimension) , "PolicyType" :: (PolicyType) , "StepScalingPolicyConfiguration" :: NullOrUndefined.NullOrUndefined (StepScalingPolicyConfiguration) , "TargetTrackingScalingPolicyConfiguration" :: NullOrUndefined.NullOrUndefined (TargetTrackingScalingPolicyConfiguration) , "Alarms" :: NullOrUndefined.NullOrUndefined (Alarms) , "CreationTime" :: (TimestampType) } ) -> ScalingPolicy
newScalingPolicy' _CreationTime _PolicyARN _PolicyName _PolicyType _ResourceId _ScalableDimension _ServiceNamespace customize = (ScalingPolicy <<< customize) { "CreationTime": _CreationTime, "PolicyARN": _PolicyARN, "PolicyName": _PolicyName, "PolicyType": _PolicyType, "ResourceId": _ResourceId, "ScalableDimension": _ScalableDimension, "ServiceNamespace": _ServiceNamespace, "Alarms": (NullOrUndefined Nothing), "StepScalingPolicyConfiguration": (NullOrUndefined Nothing), "TargetTrackingScalingPolicyConfiguration": (NullOrUndefined Nothing) }



-- | <p>Represents a scheduled action.</p>
newtype ScheduledAction = ScheduledAction 
  { "ScheduledActionName" :: (ScheduledActionName)
  , "ScheduledActionARN" :: (ResourceIdMaxLen1600)
  , "ServiceNamespace" :: (ServiceNamespace)
  , "Schedule" :: (ResourceIdMaxLen1600)
  , "ResourceId" :: (ResourceIdMaxLen1600)
  , "ScalableDimension" :: NullOrUndefined.NullOrUndefined (ScalableDimension)
  , "StartTime" :: NullOrUndefined.NullOrUndefined (TimestampType)
  , "EndTime" :: NullOrUndefined.NullOrUndefined (TimestampType)
  , "ScalableTargetAction" :: NullOrUndefined.NullOrUndefined (ScalableTargetAction)
  , "CreationTime" :: (TimestampType)
  }
derive instance newtypeScheduledAction :: Newtype ScheduledAction _
derive instance repGenericScheduledAction :: Generic ScheduledAction _
instance showScheduledAction :: Show ScheduledAction where
  show = genericShow
instance decodeScheduledAction :: Decode ScheduledAction where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeScheduledAction :: Encode ScheduledAction where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ScheduledAction from required parameters
newScheduledAction :: TimestampType -> ResourceIdMaxLen1600 -> ResourceIdMaxLen1600 -> ResourceIdMaxLen1600 -> ScheduledActionName -> ServiceNamespace -> ScheduledAction
newScheduledAction _CreationTime _ResourceId _Schedule _ScheduledActionARN _ScheduledActionName _ServiceNamespace = ScheduledAction { "CreationTime": _CreationTime, "ResourceId": _ResourceId, "Schedule": _Schedule, "ScheduledActionARN": _ScheduledActionARN, "ScheduledActionName": _ScheduledActionName, "ServiceNamespace": _ServiceNamespace, "EndTime": (NullOrUndefined Nothing), "ScalableDimension": (NullOrUndefined Nothing), "ScalableTargetAction": (NullOrUndefined Nothing), "StartTime": (NullOrUndefined Nothing) }

-- | Constructs ScheduledAction's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newScheduledAction' :: TimestampType -> ResourceIdMaxLen1600 -> ResourceIdMaxLen1600 -> ResourceIdMaxLen1600 -> ScheduledActionName -> ServiceNamespace -> ( { "ScheduledActionName" :: (ScheduledActionName) , "ScheduledActionARN" :: (ResourceIdMaxLen1600) , "ServiceNamespace" :: (ServiceNamespace) , "Schedule" :: (ResourceIdMaxLen1600) , "ResourceId" :: (ResourceIdMaxLen1600) , "ScalableDimension" :: NullOrUndefined.NullOrUndefined (ScalableDimension) , "StartTime" :: NullOrUndefined.NullOrUndefined (TimestampType) , "EndTime" :: NullOrUndefined.NullOrUndefined (TimestampType) , "ScalableTargetAction" :: NullOrUndefined.NullOrUndefined (ScalableTargetAction) , "CreationTime" :: (TimestampType) } -> {"ScheduledActionName" :: (ScheduledActionName) , "ScheduledActionARN" :: (ResourceIdMaxLen1600) , "ServiceNamespace" :: (ServiceNamespace) , "Schedule" :: (ResourceIdMaxLen1600) , "ResourceId" :: (ResourceIdMaxLen1600) , "ScalableDimension" :: NullOrUndefined.NullOrUndefined (ScalableDimension) , "StartTime" :: NullOrUndefined.NullOrUndefined (TimestampType) , "EndTime" :: NullOrUndefined.NullOrUndefined (TimestampType) , "ScalableTargetAction" :: NullOrUndefined.NullOrUndefined (ScalableTargetAction) , "CreationTime" :: (TimestampType) } ) -> ScheduledAction
newScheduledAction' _CreationTime _ResourceId _Schedule _ScheduledActionARN _ScheduledActionName _ServiceNamespace customize = (ScheduledAction <<< customize) { "CreationTime": _CreationTime, "ResourceId": _ResourceId, "Schedule": _Schedule, "ScheduledActionARN": _ScheduledActionARN, "ScheduledActionName": _ScheduledActionName, "ServiceNamespace": _ServiceNamespace, "EndTime": (NullOrUndefined Nothing), "ScalableDimension": (NullOrUndefined Nothing), "ScalableTargetAction": (NullOrUndefined Nothing), "StartTime": (NullOrUndefined Nothing) }



newtype ScheduledActionName = ScheduledActionName String
derive instance newtypeScheduledActionName :: Newtype ScheduledActionName _
derive instance repGenericScheduledActionName :: Generic ScheduledActionName _
instance showScheduledActionName :: Show ScheduledActionName where
  show = genericShow
instance decodeScheduledActionName :: Decode ScheduledActionName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeScheduledActionName :: Encode ScheduledActionName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ScheduledActions = ScheduledActions (Array ScheduledAction)
derive instance newtypeScheduledActions :: Newtype ScheduledActions _
derive instance repGenericScheduledActions :: Generic ScheduledActions _
instance showScheduledActions :: Show ScheduledActions where
  show = genericShow
instance decodeScheduledActions :: Decode ScheduledActions where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeScheduledActions :: Encode ScheduledActions where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ServiceNamespace = ServiceNamespace String
derive instance newtypeServiceNamespace :: Newtype ServiceNamespace _
derive instance repGenericServiceNamespace :: Generic ServiceNamespace _
instance showServiceNamespace :: Show ServiceNamespace where
  show = genericShow
instance decodeServiceNamespace :: Decode ServiceNamespace where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeServiceNamespace :: Encode ServiceNamespace where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Represents a step adjustment for a <a>StepScalingPolicyConfiguration</a>. Describes an adjustment based on the difference between the value of the aggregated CloudWatch metric and the breach threshold that you've defined for the alarm. </p> <p>For the following examples, suppose that you have an alarm with a breach threshold of 50:</p> <ul> <li> <p>To trigger the adjustment when the metric is greater than or equal to 50 and less than 60, specify a lower bound of 0 and an upper bound of 10.</p> </li> <li> <p>To trigger the adjustment when the metric is greater than 40 and less than or equal to 50, specify a lower bound of -10 and an upper bound of 0.</p> </li> </ul> <p>There are a few rules for the step adjustments for your step policy:</p> <ul> <li> <p>The ranges of your step adjustments can't overlap or have a gap.</p> </li> <li> <p>At most one step adjustment can have a null lower bound. If one step adjustment has a negative lower bound, then there must be a step adjustment with a null lower bound.</p> </li> <li> <p>At most one step adjustment can have a null upper bound. If one step adjustment has a positive upper bound, then there must be a step adjustment with a null upper bound.</p> </li> <li> <p>The upper and lower bound can't be null in the same step adjustment.</p> </li> </ul>
newtype StepAdjustment = StepAdjustment 
  { "MetricIntervalLowerBound" :: NullOrUndefined.NullOrUndefined (MetricScale)
  , "MetricIntervalUpperBound" :: NullOrUndefined.NullOrUndefined (MetricScale)
  , "ScalingAdjustment" :: (ScalingAdjustment)
  }
derive instance newtypeStepAdjustment :: Newtype StepAdjustment _
derive instance repGenericStepAdjustment :: Generic StepAdjustment _
instance showStepAdjustment :: Show StepAdjustment where
  show = genericShow
instance decodeStepAdjustment :: Decode StepAdjustment where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStepAdjustment :: Encode StepAdjustment where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs StepAdjustment from required parameters
newStepAdjustment :: ScalingAdjustment -> StepAdjustment
newStepAdjustment _ScalingAdjustment = StepAdjustment { "ScalingAdjustment": _ScalingAdjustment, "MetricIntervalLowerBound": (NullOrUndefined Nothing), "MetricIntervalUpperBound": (NullOrUndefined Nothing) }

-- | Constructs StepAdjustment's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStepAdjustment' :: ScalingAdjustment -> ( { "MetricIntervalLowerBound" :: NullOrUndefined.NullOrUndefined (MetricScale) , "MetricIntervalUpperBound" :: NullOrUndefined.NullOrUndefined (MetricScale) , "ScalingAdjustment" :: (ScalingAdjustment) } -> {"MetricIntervalLowerBound" :: NullOrUndefined.NullOrUndefined (MetricScale) , "MetricIntervalUpperBound" :: NullOrUndefined.NullOrUndefined (MetricScale) , "ScalingAdjustment" :: (ScalingAdjustment) } ) -> StepAdjustment
newStepAdjustment' _ScalingAdjustment customize = (StepAdjustment <<< customize) { "ScalingAdjustment": _ScalingAdjustment, "MetricIntervalLowerBound": (NullOrUndefined Nothing), "MetricIntervalUpperBound": (NullOrUndefined Nothing) }



newtype StepAdjustments = StepAdjustments (Array StepAdjustment)
derive instance newtypeStepAdjustments :: Newtype StepAdjustments _
derive instance repGenericStepAdjustments :: Generic StepAdjustments _
instance showStepAdjustments :: Show StepAdjustments where
  show = genericShow
instance decodeStepAdjustments :: Decode StepAdjustments where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStepAdjustments :: Encode StepAdjustments where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Represents a step scaling policy configuration.</p>
newtype StepScalingPolicyConfiguration = StepScalingPolicyConfiguration 
  { "AdjustmentType" :: NullOrUndefined.NullOrUndefined (AdjustmentType)
  , "StepAdjustments" :: NullOrUndefined.NullOrUndefined (StepAdjustments)
  , "MinAdjustmentMagnitude" :: NullOrUndefined.NullOrUndefined (MinAdjustmentMagnitude)
  , "Cooldown" :: NullOrUndefined.NullOrUndefined (Cooldown)
  , "MetricAggregationType" :: NullOrUndefined.NullOrUndefined (MetricAggregationType)
  }
derive instance newtypeStepScalingPolicyConfiguration :: Newtype StepScalingPolicyConfiguration _
derive instance repGenericStepScalingPolicyConfiguration :: Generic StepScalingPolicyConfiguration _
instance showStepScalingPolicyConfiguration :: Show StepScalingPolicyConfiguration where
  show = genericShow
instance decodeStepScalingPolicyConfiguration :: Decode StepScalingPolicyConfiguration where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStepScalingPolicyConfiguration :: Encode StepScalingPolicyConfiguration where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs StepScalingPolicyConfiguration from required parameters
newStepScalingPolicyConfiguration :: StepScalingPolicyConfiguration
newStepScalingPolicyConfiguration  = StepScalingPolicyConfiguration { "AdjustmentType": (NullOrUndefined Nothing), "Cooldown": (NullOrUndefined Nothing), "MetricAggregationType": (NullOrUndefined Nothing), "MinAdjustmentMagnitude": (NullOrUndefined Nothing), "StepAdjustments": (NullOrUndefined Nothing) }

-- | Constructs StepScalingPolicyConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStepScalingPolicyConfiguration' :: ( { "AdjustmentType" :: NullOrUndefined.NullOrUndefined (AdjustmentType) , "StepAdjustments" :: NullOrUndefined.NullOrUndefined (StepAdjustments) , "MinAdjustmentMagnitude" :: NullOrUndefined.NullOrUndefined (MinAdjustmentMagnitude) , "Cooldown" :: NullOrUndefined.NullOrUndefined (Cooldown) , "MetricAggregationType" :: NullOrUndefined.NullOrUndefined (MetricAggregationType) } -> {"AdjustmentType" :: NullOrUndefined.NullOrUndefined (AdjustmentType) , "StepAdjustments" :: NullOrUndefined.NullOrUndefined (StepAdjustments) , "MinAdjustmentMagnitude" :: NullOrUndefined.NullOrUndefined (MinAdjustmentMagnitude) , "Cooldown" :: NullOrUndefined.NullOrUndefined (Cooldown) , "MetricAggregationType" :: NullOrUndefined.NullOrUndefined (MetricAggregationType) } ) -> StepScalingPolicyConfiguration
newStepScalingPolicyConfiguration'  customize = (StepScalingPolicyConfiguration <<< customize) { "AdjustmentType": (NullOrUndefined Nothing), "Cooldown": (NullOrUndefined Nothing), "MetricAggregationType": (NullOrUndefined Nothing), "MinAdjustmentMagnitude": (NullOrUndefined Nothing), "StepAdjustments": (NullOrUndefined Nothing) }



-- | <p>Represents a target tracking scaling policy configuration.</p>
newtype TargetTrackingScalingPolicyConfiguration = TargetTrackingScalingPolicyConfiguration 
  { "TargetValue" :: (MetricScale)
  , "PredefinedMetricSpecification" :: NullOrUndefined.NullOrUndefined (PredefinedMetricSpecification)
  , "CustomizedMetricSpecification" :: NullOrUndefined.NullOrUndefined (CustomizedMetricSpecification)
  , "ScaleOutCooldown" :: NullOrUndefined.NullOrUndefined (Cooldown)
  , "ScaleInCooldown" :: NullOrUndefined.NullOrUndefined (Cooldown)
  , "DisableScaleIn" :: NullOrUndefined.NullOrUndefined (DisableScaleIn)
  }
derive instance newtypeTargetTrackingScalingPolicyConfiguration :: Newtype TargetTrackingScalingPolicyConfiguration _
derive instance repGenericTargetTrackingScalingPolicyConfiguration :: Generic TargetTrackingScalingPolicyConfiguration _
instance showTargetTrackingScalingPolicyConfiguration :: Show TargetTrackingScalingPolicyConfiguration where
  show = genericShow
instance decodeTargetTrackingScalingPolicyConfiguration :: Decode TargetTrackingScalingPolicyConfiguration where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTargetTrackingScalingPolicyConfiguration :: Encode TargetTrackingScalingPolicyConfiguration where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs TargetTrackingScalingPolicyConfiguration from required parameters
newTargetTrackingScalingPolicyConfiguration :: MetricScale -> TargetTrackingScalingPolicyConfiguration
newTargetTrackingScalingPolicyConfiguration _TargetValue = TargetTrackingScalingPolicyConfiguration { "TargetValue": _TargetValue, "CustomizedMetricSpecification": (NullOrUndefined Nothing), "DisableScaleIn": (NullOrUndefined Nothing), "PredefinedMetricSpecification": (NullOrUndefined Nothing), "ScaleInCooldown": (NullOrUndefined Nothing), "ScaleOutCooldown": (NullOrUndefined Nothing) }

-- | Constructs TargetTrackingScalingPolicyConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTargetTrackingScalingPolicyConfiguration' :: MetricScale -> ( { "TargetValue" :: (MetricScale) , "PredefinedMetricSpecification" :: NullOrUndefined.NullOrUndefined (PredefinedMetricSpecification) , "CustomizedMetricSpecification" :: NullOrUndefined.NullOrUndefined (CustomizedMetricSpecification) , "ScaleOutCooldown" :: NullOrUndefined.NullOrUndefined (Cooldown) , "ScaleInCooldown" :: NullOrUndefined.NullOrUndefined (Cooldown) , "DisableScaleIn" :: NullOrUndefined.NullOrUndefined (DisableScaleIn) } -> {"TargetValue" :: (MetricScale) , "PredefinedMetricSpecification" :: NullOrUndefined.NullOrUndefined (PredefinedMetricSpecification) , "CustomizedMetricSpecification" :: NullOrUndefined.NullOrUndefined (CustomizedMetricSpecification) , "ScaleOutCooldown" :: NullOrUndefined.NullOrUndefined (Cooldown) , "ScaleInCooldown" :: NullOrUndefined.NullOrUndefined (Cooldown) , "DisableScaleIn" :: NullOrUndefined.NullOrUndefined (DisableScaleIn) } ) -> TargetTrackingScalingPolicyConfiguration
newTargetTrackingScalingPolicyConfiguration' _TargetValue customize = (TargetTrackingScalingPolicyConfiguration <<< customize) { "TargetValue": _TargetValue, "CustomizedMetricSpecification": (NullOrUndefined Nothing), "DisableScaleIn": (NullOrUndefined Nothing), "PredefinedMetricSpecification": (NullOrUndefined Nothing), "ScaleInCooldown": (NullOrUndefined Nothing), "ScaleOutCooldown": (NullOrUndefined Nothing) }



newtype TimestampType = TimestampType Types.Timestamp
derive instance newtypeTimestampType :: Newtype TimestampType _
derive instance repGenericTimestampType :: Generic TimestampType _
instance showTimestampType :: Show TimestampType where
  show = genericShow
instance decodeTimestampType :: Decode TimestampType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTimestampType :: Encode TimestampType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>An exception was thrown for a validation issue. Review the available parameters for the API request.</p>
newtype ValidationException = ValidationException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeValidationException :: Newtype ValidationException _
derive instance repGenericValidationException :: Generic ValidationException _
instance showValidationException :: Show ValidationException where
  show = genericShow
instance decodeValidationException :: Decode ValidationException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeValidationException :: Encode ValidationException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ValidationException from required parameters
newValidationException :: ValidationException
newValidationException  = ValidationException { "Message": (NullOrUndefined Nothing) }

-- | Constructs ValidationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newValidationException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> ValidationException
newValidationException'  customize = (ValidationException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype XmlString = XmlString String
derive instance newtypeXmlString :: Newtype XmlString _
derive instance repGenericXmlString :: Generic XmlString _
instance showXmlString :: Show XmlString where
  show = genericShow
instance decodeXmlString :: Decode XmlString where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeXmlString :: Encode XmlString where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

