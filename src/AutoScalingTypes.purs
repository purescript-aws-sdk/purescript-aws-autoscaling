
module AWS.AutoScaling.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


newtype AdjustmentType = AdjustmentType String
derive instance newtypeAdjustmentType :: Newtype AdjustmentType _
derive instance repGenericAdjustmentType :: Generic AdjustmentType _
instance showAdjustmentType :: Show AdjustmentType where show = genericShow
instance decodeAdjustmentType :: Decode AdjustmentType where decode = genericDecode options
instance encodeAdjustmentType :: Encode AdjustmentType where encode = genericEncode options



-- | <p>Represents a CloudWatch alarm associated with a scaling policy.</p>
newtype Alarm = Alarm 
  { "AlarmName" :: (ResourceId)
  , "AlarmARN" :: (ResourceId)
  }
derive instance newtypeAlarm :: Newtype Alarm _
derive instance repGenericAlarm :: Generic Alarm _
instance showAlarm :: Show Alarm where show = genericShow
instance decodeAlarm :: Decode Alarm where decode = genericDecode options
instance encodeAlarm :: Encode Alarm where encode = genericEncode options

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
instance showAlarms :: Show Alarms where show = genericShow
instance decodeAlarms :: Decode Alarms where decode = genericDecode options
instance encodeAlarms :: Encode Alarms where encode = genericEncode options



-- | <p>Concurrent updates caused an exception, for example, if you request an update to an Application Auto Scaling resource that already has a pending update.</p>
newtype ConcurrentUpdateException = ConcurrentUpdateException 
  { "Message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeConcurrentUpdateException :: Newtype ConcurrentUpdateException _
derive instance repGenericConcurrentUpdateException :: Generic ConcurrentUpdateException _
instance showConcurrentUpdateException :: Show ConcurrentUpdateException where show = genericShow
instance decodeConcurrentUpdateException :: Decode ConcurrentUpdateException where decode = genericDecode options
instance encodeConcurrentUpdateException :: Encode ConcurrentUpdateException where encode = genericEncode options

-- | Constructs ConcurrentUpdateException from required parameters
newConcurrentUpdateException :: ConcurrentUpdateException
newConcurrentUpdateException  = ConcurrentUpdateException { "Message": (NullOrUndefined Nothing) }

-- | Constructs ConcurrentUpdateException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConcurrentUpdateException' :: ( { "Message" :: NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined (ErrorMessage) } ) -> ConcurrentUpdateException
newConcurrentUpdateException'  customize = (ConcurrentUpdateException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype Cooldown = Cooldown Int
derive instance newtypeCooldown :: Newtype Cooldown _
derive instance repGenericCooldown :: Generic Cooldown _
instance showCooldown :: Show Cooldown where show = genericShow
instance decodeCooldown :: Decode Cooldown where decode = genericDecode options
instance encodeCooldown :: Encode Cooldown where encode = genericEncode options



-- | <p>Configures a customized metric for a target tracking policy.</p>
newtype CustomizedMetricSpecification = CustomizedMetricSpecification 
  { "MetricName" :: (MetricName)
  , "Namespace" :: (MetricNamespace)
  , "Dimensions" :: NullOrUndefined (MetricDimensions)
  , "Statistic" :: (MetricStatistic)
  , "Unit" :: NullOrUndefined (MetricUnit)
  }
derive instance newtypeCustomizedMetricSpecification :: Newtype CustomizedMetricSpecification _
derive instance repGenericCustomizedMetricSpecification :: Generic CustomizedMetricSpecification _
instance showCustomizedMetricSpecification :: Show CustomizedMetricSpecification where show = genericShow
instance decodeCustomizedMetricSpecification :: Decode CustomizedMetricSpecification where decode = genericDecode options
instance encodeCustomizedMetricSpecification :: Encode CustomizedMetricSpecification where encode = genericEncode options

-- | Constructs CustomizedMetricSpecification from required parameters
newCustomizedMetricSpecification :: MetricName -> MetricNamespace -> MetricStatistic -> CustomizedMetricSpecification
newCustomizedMetricSpecification _MetricName _Namespace _Statistic = CustomizedMetricSpecification { "MetricName": _MetricName, "Namespace": _Namespace, "Statistic": _Statistic, "Dimensions": (NullOrUndefined Nothing), "Unit": (NullOrUndefined Nothing) }

-- | Constructs CustomizedMetricSpecification's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCustomizedMetricSpecification' :: MetricName -> MetricNamespace -> MetricStatistic -> ( { "MetricName" :: (MetricName) , "Namespace" :: (MetricNamespace) , "Dimensions" :: NullOrUndefined (MetricDimensions) , "Statistic" :: (MetricStatistic) , "Unit" :: NullOrUndefined (MetricUnit) } -> {"MetricName" :: (MetricName) , "Namespace" :: (MetricNamespace) , "Dimensions" :: NullOrUndefined (MetricDimensions) , "Statistic" :: (MetricStatistic) , "Unit" :: NullOrUndefined (MetricUnit) } ) -> CustomizedMetricSpecification
newCustomizedMetricSpecification' _MetricName _Namespace _Statistic customize = (CustomizedMetricSpecification <<< customize) { "MetricName": _MetricName, "Namespace": _Namespace, "Statistic": _Statistic, "Dimensions": (NullOrUndefined Nothing), "Unit": (NullOrUndefined Nothing) }



newtype DeleteScalingPolicyRequest = DeleteScalingPolicyRequest 
  { "PolicyName" :: (ResourceIdMaxLen1600)
  , "ServiceNamespace" :: (ServiceNamespace)
  , "ResourceId" :: (ResourceIdMaxLen1600)
  , "ScalableDimension" :: (ScalableDimension)
  }
derive instance newtypeDeleteScalingPolicyRequest :: Newtype DeleteScalingPolicyRequest _
derive instance repGenericDeleteScalingPolicyRequest :: Generic DeleteScalingPolicyRequest _
instance showDeleteScalingPolicyRequest :: Show DeleteScalingPolicyRequest where show = genericShow
instance decodeDeleteScalingPolicyRequest :: Decode DeleteScalingPolicyRequest where decode = genericDecode options
instance encodeDeleteScalingPolicyRequest :: Encode DeleteScalingPolicyRequest where encode = genericEncode options

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
instance showDeleteScalingPolicyResponse :: Show DeleteScalingPolicyResponse where show = genericShow
instance decodeDeleteScalingPolicyResponse :: Decode DeleteScalingPolicyResponse where decode = genericDecode options
instance encodeDeleteScalingPolicyResponse :: Encode DeleteScalingPolicyResponse where encode = genericEncode options



newtype DeleteScheduledActionRequest = DeleteScheduledActionRequest 
  { "ServiceNamespace" :: (ServiceNamespace)
  , "ScheduledActionName" :: (ResourceIdMaxLen1600)
  , "ResourceId" :: (ResourceIdMaxLen1600)
  , "ScalableDimension" :: NullOrUndefined (ScalableDimension)
  }
derive instance newtypeDeleteScheduledActionRequest :: Newtype DeleteScheduledActionRequest _
derive instance repGenericDeleteScheduledActionRequest :: Generic DeleteScheduledActionRequest _
instance showDeleteScheduledActionRequest :: Show DeleteScheduledActionRequest where show = genericShow
instance decodeDeleteScheduledActionRequest :: Decode DeleteScheduledActionRequest where decode = genericDecode options
instance encodeDeleteScheduledActionRequest :: Encode DeleteScheduledActionRequest where encode = genericEncode options

-- | Constructs DeleteScheduledActionRequest from required parameters
newDeleteScheduledActionRequest :: ResourceIdMaxLen1600 -> ResourceIdMaxLen1600 -> ServiceNamespace -> DeleteScheduledActionRequest
newDeleteScheduledActionRequest _ResourceId _ScheduledActionName _ServiceNamespace = DeleteScheduledActionRequest { "ResourceId": _ResourceId, "ScheduledActionName": _ScheduledActionName, "ServiceNamespace": _ServiceNamespace, "ScalableDimension": (NullOrUndefined Nothing) }

-- | Constructs DeleteScheduledActionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteScheduledActionRequest' :: ResourceIdMaxLen1600 -> ResourceIdMaxLen1600 -> ServiceNamespace -> ( { "ServiceNamespace" :: (ServiceNamespace) , "ScheduledActionName" :: (ResourceIdMaxLen1600) , "ResourceId" :: (ResourceIdMaxLen1600) , "ScalableDimension" :: NullOrUndefined (ScalableDimension) } -> {"ServiceNamespace" :: (ServiceNamespace) , "ScheduledActionName" :: (ResourceIdMaxLen1600) , "ResourceId" :: (ResourceIdMaxLen1600) , "ScalableDimension" :: NullOrUndefined (ScalableDimension) } ) -> DeleteScheduledActionRequest
newDeleteScheduledActionRequest' _ResourceId _ScheduledActionName _ServiceNamespace customize = (DeleteScheduledActionRequest <<< customize) { "ResourceId": _ResourceId, "ScheduledActionName": _ScheduledActionName, "ServiceNamespace": _ServiceNamespace, "ScalableDimension": (NullOrUndefined Nothing) }



newtype DeleteScheduledActionResponse = DeleteScheduledActionResponse Types.NoArguments
derive instance newtypeDeleteScheduledActionResponse :: Newtype DeleteScheduledActionResponse _
derive instance repGenericDeleteScheduledActionResponse :: Generic DeleteScheduledActionResponse _
instance showDeleteScheduledActionResponse :: Show DeleteScheduledActionResponse where show = genericShow
instance decodeDeleteScheduledActionResponse :: Decode DeleteScheduledActionResponse where decode = genericDecode options
instance encodeDeleteScheduledActionResponse :: Encode DeleteScheduledActionResponse where encode = genericEncode options



newtype DeregisterScalableTargetRequest = DeregisterScalableTargetRequest 
  { "ServiceNamespace" :: (ServiceNamespace)
  , "ResourceId" :: (ResourceIdMaxLen1600)
  , "ScalableDimension" :: (ScalableDimension)
  }
derive instance newtypeDeregisterScalableTargetRequest :: Newtype DeregisterScalableTargetRequest _
derive instance repGenericDeregisterScalableTargetRequest :: Generic DeregisterScalableTargetRequest _
instance showDeregisterScalableTargetRequest :: Show DeregisterScalableTargetRequest where show = genericShow
instance decodeDeregisterScalableTargetRequest :: Decode DeregisterScalableTargetRequest where decode = genericDecode options
instance encodeDeregisterScalableTargetRequest :: Encode DeregisterScalableTargetRequest where encode = genericEncode options

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
instance showDeregisterScalableTargetResponse :: Show DeregisterScalableTargetResponse where show = genericShow
instance decodeDeregisterScalableTargetResponse :: Decode DeregisterScalableTargetResponse where decode = genericDecode options
instance encodeDeregisterScalableTargetResponse :: Encode DeregisterScalableTargetResponse where encode = genericEncode options



newtype DescribeScalableTargetsRequest = DescribeScalableTargetsRequest 
  { "ServiceNamespace" :: (ServiceNamespace)
  , "ResourceIds" :: NullOrUndefined (ResourceIdsMaxLen1600)
  , "ScalableDimension" :: NullOrUndefined (ScalableDimension)
  , "MaxResults" :: NullOrUndefined (MaxResults)
  , "NextToken" :: NullOrUndefined (XmlString)
  }
derive instance newtypeDescribeScalableTargetsRequest :: Newtype DescribeScalableTargetsRequest _
derive instance repGenericDescribeScalableTargetsRequest :: Generic DescribeScalableTargetsRequest _
instance showDescribeScalableTargetsRequest :: Show DescribeScalableTargetsRequest where show = genericShow
instance decodeDescribeScalableTargetsRequest :: Decode DescribeScalableTargetsRequest where decode = genericDecode options
instance encodeDescribeScalableTargetsRequest :: Encode DescribeScalableTargetsRequest where encode = genericEncode options

-- | Constructs DescribeScalableTargetsRequest from required parameters
newDescribeScalableTargetsRequest :: ServiceNamespace -> DescribeScalableTargetsRequest
newDescribeScalableTargetsRequest _ServiceNamespace = DescribeScalableTargetsRequest { "ServiceNamespace": _ServiceNamespace, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "ResourceIds": (NullOrUndefined Nothing), "ScalableDimension": (NullOrUndefined Nothing) }

-- | Constructs DescribeScalableTargetsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeScalableTargetsRequest' :: ServiceNamespace -> ( { "ServiceNamespace" :: (ServiceNamespace) , "ResourceIds" :: NullOrUndefined (ResourceIdsMaxLen1600) , "ScalableDimension" :: NullOrUndefined (ScalableDimension) , "MaxResults" :: NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined (XmlString) } -> {"ServiceNamespace" :: (ServiceNamespace) , "ResourceIds" :: NullOrUndefined (ResourceIdsMaxLen1600) , "ScalableDimension" :: NullOrUndefined (ScalableDimension) , "MaxResults" :: NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined (XmlString) } ) -> DescribeScalableTargetsRequest
newDescribeScalableTargetsRequest' _ServiceNamespace customize = (DescribeScalableTargetsRequest <<< customize) { "ServiceNamespace": _ServiceNamespace, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "ResourceIds": (NullOrUndefined Nothing), "ScalableDimension": (NullOrUndefined Nothing) }



newtype DescribeScalableTargetsResponse = DescribeScalableTargetsResponse 
  { "ScalableTargets" :: NullOrUndefined (ScalableTargets)
  , "NextToken" :: NullOrUndefined (XmlString)
  }
derive instance newtypeDescribeScalableTargetsResponse :: Newtype DescribeScalableTargetsResponse _
derive instance repGenericDescribeScalableTargetsResponse :: Generic DescribeScalableTargetsResponse _
instance showDescribeScalableTargetsResponse :: Show DescribeScalableTargetsResponse where show = genericShow
instance decodeDescribeScalableTargetsResponse :: Decode DescribeScalableTargetsResponse where decode = genericDecode options
instance encodeDescribeScalableTargetsResponse :: Encode DescribeScalableTargetsResponse where encode = genericEncode options

-- | Constructs DescribeScalableTargetsResponse from required parameters
newDescribeScalableTargetsResponse :: DescribeScalableTargetsResponse
newDescribeScalableTargetsResponse  = DescribeScalableTargetsResponse { "NextToken": (NullOrUndefined Nothing), "ScalableTargets": (NullOrUndefined Nothing) }

-- | Constructs DescribeScalableTargetsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeScalableTargetsResponse' :: ( { "ScalableTargets" :: NullOrUndefined (ScalableTargets) , "NextToken" :: NullOrUndefined (XmlString) } -> {"ScalableTargets" :: NullOrUndefined (ScalableTargets) , "NextToken" :: NullOrUndefined (XmlString) } ) -> DescribeScalableTargetsResponse
newDescribeScalableTargetsResponse'  customize = (DescribeScalableTargetsResponse <<< customize) { "NextToken": (NullOrUndefined Nothing), "ScalableTargets": (NullOrUndefined Nothing) }



newtype DescribeScalingActivitiesRequest = DescribeScalingActivitiesRequest 
  { "ServiceNamespace" :: (ServiceNamespace)
  , "ResourceId" :: NullOrUndefined (ResourceIdMaxLen1600)
  , "ScalableDimension" :: NullOrUndefined (ScalableDimension)
  , "MaxResults" :: NullOrUndefined (MaxResults)
  , "NextToken" :: NullOrUndefined (XmlString)
  }
derive instance newtypeDescribeScalingActivitiesRequest :: Newtype DescribeScalingActivitiesRequest _
derive instance repGenericDescribeScalingActivitiesRequest :: Generic DescribeScalingActivitiesRequest _
instance showDescribeScalingActivitiesRequest :: Show DescribeScalingActivitiesRequest where show = genericShow
instance decodeDescribeScalingActivitiesRequest :: Decode DescribeScalingActivitiesRequest where decode = genericDecode options
instance encodeDescribeScalingActivitiesRequest :: Encode DescribeScalingActivitiesRequest where encode = genericEncode options

-- | Constructs DescribeScalingActivitiesRequest from required parameters
newDescribeScalingActivitiesRequest :: ServiceNamespace -> DescribeScalingActivitiesRequest
newDescribeScalingActivitiesRequest _ServiceNamespace = DescribeScalingActivitiesRequest { "ServiceNamespace": _ServiceNamespace, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "ResourceId": (NullOrUndefined Nothing), "ScalableDimension": (NullOrUndefined Nothing) }

-- | Constructs DescribeScalingActivitiesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeScalingActivitiesRequest' :: ServiceNamespace -> ( { "ServiceNamespace" :: (ServiceNamespace) , "ResourceId" :: NullOrUndefined (ResourceIdMaxLen1600) , "ScalableDimension" :: NullOrUndefined (ScalableDimension) , "MaxResults" :: NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined (XmlString) } -> {"ServiceNamespace" :: (ServiceNamespace) , "ResourceId" :: NullOrUndefined (ResourceIdMaxLen1600) , "ScalableDimension" :: NullOrUndefined (ScalableDimension) , "MaxResults" :: NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined (XmlString) } ) -> DescribeScalingActivitiesRequest
newDescribeScalingActivitiesRequest' _ServiceNamespace customize = (DescribeScalingActivitiesRequest <<< customize) { "ServiceNamespace": _ServiceNamespace, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "ResourceId": (NullOrUndefined Nothing), "ScalableDimension": (NullOrUndefined Nothing) }



newtype DescribeScalingActivitiesResponse = DescribeScalingActivitiesResponse 
  { "ScalingActivities" :: NullOrUndefined (ScalingActivities)
  , "NextToken" :: NullOrUndefined (XmlString)
  }
derive instance newtypeDescribeScalingActivitiesResponse :: Newtype DescribeScalingActivitiesResponse _
derive instance repGenericDescribeScalingActivitiesResponse :: Generic DescribeScalingActivitiesResponse _
instance showDescribeScalingActivitiesResponse :: Show DescribeScalingActivitiesResponse where show = genericShow
instance decodeDescribeScalingActivitiesResponse :: Decode DescribeScalingActivitiesResponse where decode = genericDecode options
instance encodeDescribeScalingActivitiesResponse :: Encode DescribeScalingActivitiesResponse where encode = genericEncode options

-- | Constructs DescribeScalingActivitiesResponse from required parameters
newDescribeScalingActivitiesResponse :: DescribeScalingActivitiesResponse
newDescribeScalingActivitiesResponse  = DescribeScalingActivitiesResponse { "NextToken": (NullOrUndefined Nothing), "ScalingActivities": (NullOrUndefined Nothing) }

-- | Constructs DescribeScalingActivitiesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeScalingActivitiesResponse' :: ( { "ScalingActivities" :: NullOrUndefined (ScalingActivities) , "NextToken" :: NullOrUndefined (XmlString) } -> {"ScalingActivities" :: NullOrUndefined (ScalingActivities) , "NextToken" :: NullOrUndefined (XmlString) } ) -> DescribeScalingActivitiesResponse
newDescribeScalingActivitiesResponse'  customize = (DescribeScalingActivitiesResponse <<< customize) { "NextToken": (NullOrUndefined Nothing), "ScalingActivities": (NullOrUndefined Nothing) }



newtype DescribeScalingPoliciesRequest = DescribeScalingPoliciesRequest 
  { "PolicyNames" :: NullOrUndefined (ResourceIdsMaxLen1600)
  , "ServiceNamespace" :: (ServiceNamespace)
  , "ResourceId" :: NullOrUndefined (ResourceIdMaxLen1600)
  , "ScalableDimension" :: NullOrUndefined (ScalableDimension)
  , "MaxResults" :: NullOrUndefined (MaxResults)
  , "NextToken" :: NullOrUndefined (XmlString)
  }
derive instance newtypeDescribeScalingPoliciesRequest :: Newtype DescribeScalingPoliciesRequest _
derive instance repGenericDescribeScalingPoliciesRequest :: Generic DescribeScalingPoliciesRequest _
instance showDescribeScalingPoliciesRequest :: Show DescribeScalingPoliciesRequest where show = genericShow
instance decodeDescribeScalingPoliciesRequest :: Decode DescribeScalingPoliciesRequest where decode = genericDecode options
instance encodeDescribeScalingPoliciesRequest :: Encode DescribeScalingPoliciesRequest where encode = genericEncode options

-- | Constructs DescribeScalingPoliciesRequest from required parameters
newDescribeScalingPoliciesRequest :: ServiceNamespace -> DescribeScalingPoliciesRequest
newDescribeScalingPoliciesRequest _ServiceNamespace = DescribeScalingPoliciesRequest { "ServiceNamespace": _ServiceNamespace, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "PolicyNames": (NullOrUndefined Nothing), "ResourceId": (NullOrUndefined Nothing), "ScalableDimension": (NullOrUndefined Nothing) }

-- | Constructs DescribeScalingPoliciesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeScalingPoliciesRequest' :: ServiceNamespace -> ( { "PolicyNames" :: NullOrUndefined (ResourceIdsMaxLen1600) , "ServiceNamespace" :: (ServiceNamespace) , "ResourceId" :: NullOrUndefined (ResourceIdMaxLen1600) , "ScalableDimension" :: NullOrUndefined (ScalableDimension) , "MaxResults" :: NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined (XmlString) } -> {"PolicyNames" :: NullOrUndefined (ResourceIdsMaxLen1600) , "ServiceNamespace" :: (ServiceNamespace) , "ResourceId" :: NullOrUndefined (ResourceIdMaxLen1600) , "ScalableDimension" :: NullOrUndefined (ScalableDimension) , "MaxResults" :: NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined (XmlString) } ) -> DescribeScalingPoliciesRequest
newDescribeScalingPoliciesRequest' _ServiceNamespace customize = (DescribeScalingPoliciesRequest <<< customize) { "ServiceNamespace": _ServiceNamespace, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "PolicyNames": (NullOrUndefined Nothing), "ResourceId": (NullOrUndefined Nothing), "ScalableDimension": (NullOrUndefined Nothing) }



newtype DescribeScalingPoliciesResponse = DescribeScalingPoliciesResponse 
  { "ScalingPolicies" :: NullOrUndefined (ScalingPolicies)
  , "NextToken" :: NullOrUndefined (XmlString)
  }
derive instance newtypeDescribeScalingPoliciesResponse :: Newtype DescribeScalingPoliciesResponse _
derive instance repGenericDescribeScalingPoliciesResponse :: Generic DescribeScalingPoliciesResponse _
instance showDescribeScalingPoliciesResponse :: Show DescribeScalingPoliciesResponse where show = genericShow
instance decodeDescribeScalingPoliciesResponse :: Decode DescribeScalingPoliciesResponse where decode = genericDecode options
instance encodeDescribeScalingPoliciesResponse :: Encode DescribeScalingPoliciesResponse where encode = genericEncode options

-- | Constructs DescribeScalingPoliciesResponse from required parameters
newDescribeScalingPoliciesResponse :: DescribeScalingPoliciesResponse
newDescribeScalingPoliciesResponse  = DescribeScalingPoliciesResponse { "NextToken": (NullOrUndefined Nothing), "ScalingPolicies": (NullOrUndefined Nothing) }

-- | Constructs DescribeScalingPoliciesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeScalingPoliciesResponse' :: ( { "ScalingPolicies" :: NullOrUndefined (ScalingPolicies) , "NextToken" :: NullOrUndefined (XmlString) } -> {"ScalingPolicies" :: NullOrUndefined (ScalingPolicies) , "NextToken" :: NullOrUndefined (XmlString) } ) -> DescribeScalingPoliciesResponse
newDescribeScalingPoliciesResponse'  customize = (DescribeScalingPoliciesResponse <<< customize) { "NextToken": (NullOrUndefined Nothing), "ScalingPolicies": (NullOrUndefined Nothing) }



newtype DescribeScheduledActionsRequest = DescribeScheduledActionsRequest 
  { "ScheduledActionNames" :: NullOrUndefined (ResourceIdsMaxLen1600)
  , "ServiceNamespace" :: (ServiceNamespace)
  , "ResourceId" :: NullOrUndefined (ResourceIdMaxLen1600)
  , "ScalableDimension" :: NullOrUndefined (ScalableDimension)
  , "MaxResults" :: NullOrUndefined (MaxResults)
  , "NextToken" :: NullOrUndefined (XmlString)
  }
derive instance newtypeDescribeScheduledActionsRequest :: Newtype DescribeScheduledActionsRequest _
derive instance repGenericDescribeScheduledActionsRequest :: Generic DescribeScheduledActionsRequest _
instance showDescribeScheduledActionsRequest :: Show DescribeScheduledActionsRequest where show = genericShow
instance decodeDescribeScheduledActionsRequest :: Decode DescribeScheduledActionsRequest where decode = genericDecode options
instance encodeDescribeScheduledActionsRequest :: Encode DescribeScheduledActionsRequest where encode = genericEncode options

-- | Constructs DescribeScheduledActionsRequest from required parameters
newDescribeScheduledActionsRequest :: ServiceNamespace -> DescribeScheduledActionsRequest
newDescribeScheduledActionsRequest _ServiceNamespace = DescribeScheduledActionsRequest { "ServiceNamespace": _ServiceNamespace, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "ResourceId": (NullOrUndefined Nothing), "ScalableDimension": (NullOrUndefined Nothing), "ScheduledActionNames": (NullOrUndefined Nothing) }

-- | Constructs DescribeScheduledActionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeScheduledActionsRequest' :: ServiceNamespace -> ( { "ScheduledActionNames" :: NullOrUndefined (ResourceIdsMaxLen1600) , "ServiceNamespace" :: (ServiceNamespace) , "ResourceId" :: NullOrUndefined (ResourceIdMaxLen1600) , "ScalableDimension" :: NullOrUndefined (ScalableDimension) , "MaxResults" :: NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined (XmlString) } -> {"ScheduledActionNames" :: NullOrUndefined (ResourceIdsMaxLen1600) , "ServiceNamespace" :: (ServiceNamespace) , "ResourceId" :: NullOrUndefined (ResourceIdMaxLen1600) , "ScalableDimension" :: NullOrUndefined (ScalableDimension) , "MaxResults" :: NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined (XmlString) } ) -> DescribeScheduledActionsRequest
newDescribeScheduledActionsRequest' _ServiceNamespace customize = (DescribeScheduledActionsRequest <<< customize) { "ServiceNamespace": _ServiceNamespace, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "ResourceId": (NullOrUndefined Nothing), "ScalableDimension": (NullOrUndefined Nothing), "ScheduledActionNames": (NullOrUndefined Nothing) }



newtype DescribeScheduledActionsResponse = DescribeScheduledActionsResponse 
  { "ScheduledActions" :: NullOrUndefined (ScheduledActions)
  , "NextToken" :: NullOrUndefined (XmlString)
  }
derive instance newtypeDescribeScheduledActionsResponse :: Newtype DescribeScheduledActionsResponse _
derive instance repGenericDescribeScheduledActionsResponse :: Generic DescribeScheduledActionsResponse _
instance showDescribeScheduledActionsResponse :: Show DescribeScheduledActionsResponse where show = genericShow
instance decodeDescribeScheduledActionsResponse :: Decode DescribeScheduledActionsResponse where decode = genericDecode options
instance encodeDescribeScheduledActionsResponse :: Encode DescribeScheduledActionsResponse where encode = genericEncode options

-- | Constructs DescribeScheduledActionsResponse from required parameters
newDescribeScheduledActionsResponse :: DescribeScheduledActionsResponse
newDescribeScheduledActionsResponse  = DescribeScheduledActionsResponse { "NextToken": (NullOrUndefined Nothing), "ScheduledActions": (NullOrUndefined Nothing) }

-- | Constructs DescribeScheduledActionsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeScheduledActionsResponse' :: ( { "ScheduledActions" :: NullOrUndefined (ScheduledActions) , "NextToken" :: NullOrUndefined (XmlString) } -> {"ScheduledActions" :: NullOrUndefined (ScheduledActions) , "NextToken" :: NullOrUndefined (XmlString) } ) -> DescribeScheduledActionsResponse
newDescribeScheduledActionsResponse'  customize = (DescribeScheduledActionsResponse <<< customize) { "NextToken": (NullOrUndefined Nothing), "ScheduledActions": (NullOrUndefined Nothing) }



newtype DisableScaleIn = DisableScaleIn Boolean
derive instance newtypeDisableScaleIn :: Newtype DisableScaleIn _
derive instance repGenericDisableScaleIn :: Generic DisableScaleIn _
instance showDisableScaleIn :: Show DisableScaleIn where show = genericShow
instance decodeDisableScaleIn :: Decode DisableScaleIn where decode = genericDecode options
instance encodeDisableScaleIn :: Encode DisableScaleIn where encode = genericEncode options



newtype ErrorMessage = ErrorMessage String
derive instance newtypeErrorMessage :: Newtype ErrorMessage _
derive instance repGenericErrorMessage :: Generic ErrorMessage _
instance showErrorMessage :: Show ErrorMessage where show = genericShow
instance decodeErrorMessage :: Decode ErrorMessage where decode = genericDecode options
instance encodeErrorMessage :: Encode ErrorMessage where encode = genericEncode options



-- | <p>Failed access to resources caused an exception. This exception is thrown when Application Auto Scaling is unable to retrieve the alarms associated with a scaling policy due to a client error, for example, if the role ARN specified for a scalable target does not have permission to call the CloudWatch <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeAlarms.html">DescribeAlarms</a> on your behalf.</p>
newtype FailedResourceAccessException = FailedResourceAccessException 
  { "Message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeFailedResourceAccessException :: Newtype FailedResourceAccessException _
derive instance repGenericFailedResourceAccessException :: Generic FailedResourceAccessException _
instance showFailedResourceAccessException :: Show FailedResourceAccessException where show = genericShow
instance decodeFailedResourceAccessException :: Decode FailedResourceAccessException where decode = genericDecode options
instance encodeFailedResourceAccessException :: Encode FailedResourceAccessException where encode = genericEncode options

-- | Constructs FailedResourceAccessException from required parameters
newFailedResourceAccessException :: FailedResourceAccessException
newFailedResourceAccessException  = FailedResourceAccessException { "Message": (NullOrUndefined Nothing) }

-- | Constructs FailedResourceAccessException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFailedResourceAccessException' :: ( { "Message" :: NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined (ErrorMessage) } ) -> FailedResourceAccessException
newFailedResourceAccessException'  customize = (FailedResourceAccessException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>The service encountered an internal error.</p>
newtype InternalServiceException = InternalServiceException 
  { "Message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInternalServiceException :: Newtype InternalServiceException _
derive instance repGenericInternalServiceException :: Generic InternalServiceException _
instance showInternalServiceException :: Show InternalServiceException where show = genericShow
instance decodeInternalServiceException :: Decode InternalServiceException where decode = genericDecode options
instance encodeInternalServiceException :: Encode InternalServiceException where encode = genericEncode options

-- | Constructs InternalServiceException from required parameters
newInternalServiceException :: InternalServiceException
newInternalServiceException  = InternalServiceException { "Message": (NullOrUndefined Nothing) }

-- | Constructs InternalServiceException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalServiceException' :: ( { "Message" :: NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined (ErrorMessage) } ) -> InternalServiceException
newInternalServiceException'  customize = (InternalServiceException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>The next token supplied was invalid.</p>
newtype InvalidNextTokenException = InvalidNextTokenException 
  { "Message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInvalidNextTokenException :: Newtype InvalidNextTokenException _
derive instance repGenericInvalidNextTokenException :: Generic InvalidNextTokenException _
instance showInvalidNextTokenException :: Show InvalidNextTokenException where show = genericShow
instance decodeInvalidNextTokenException :: Decode InvalidNextTokenException where decode = genericDecode options
instance encodeInvalidNextTokenException :: Encode InvalidNextTokenException where encode = genericEncode options

-- | Constructs InvalidNextTokenException from required parameters
newInvalidNextTokenException :: InvalidNextTokenException
newInvalidNextTokenException  = InvalidNextTokenException { "Message": (NullOrUndefined Nothing) }

-- | Constructs InvalidNextTokenException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidNextTokenException' :: ( { "Message" :: NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined (ErrorMessage) } ) -> InvalidNextTokenException
newInvalidNextTokenException'  customize = (InvalidNextTokenException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>A per-account resource limit is exceeded. For more information, see <a href="http://docs.aws.amazon.com/ApplicationAutoScaling/latest/userguide/application-auto-scaling-limits.html">Application Auto Scaling Limits</a>.</p>
newtype LimitExceededException = LimitExceededException 
  { "Message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeLimitExceededException :: Newtype LimitExceededException _
derive instance repGenericLimitExceededException :: Generic LimitExceededException _
instance showLimitExceededException :: Show LimitExceededException where show = genericShow
instance decodeLimitExceededException :: Decode LimitExceededException where decode = genericDecode options
instance encodeLimitExceededException :: Encode LimitExceededException where encode = genericEncode options

-- | Constructs LimitExceededException from required parameters
newLimitExceededException :: LimitExceededException
newLimitExceededException  = LimitExceededException { "Message": (NullOrUndefined Nothing) }

-- | Constructs LimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLimitExceededException' :: ( { "Message" :: NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined (ErrorMessage) } ) -> LimitExceededException
newLimitExceededException'  customize = (LimitExceededException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype MaxResults = MaxResults Int
derive instance newtypeMaxResults :: Newtype MaxResults _
derive instance repGenericMaxResults :: Generic MaxResults _
instance showMaxResults :: Show MaxResults where show = genericShow
instance decodeMaxResults :: Decode MaxResults where decode = genericDecode options
instance encodeMaxResults :: Encode MaxResults where encode = genericEncode options



newtype MetricAggregationType = MetricAggregationType String
derive instance newtypeMetricAggregationType :: Newtype MetricAggregationType _
derive instance repGenericMetricAggregationType :: Generic MetricAggregationType _
instance showMetricAggregationType :: Show MetricAggregationType where show = genericShow
instance decodeMetricAggregationType :: Decode MetricAggregationType where decode = genericDecode options
instance encodeMetricAggregationType :: Encode MetricAggregationType where encode = genericEncode options



-- | <p>Describes the dimension of a metric.</p>
newtype MetricDimension = MetricDimension 
  { "Name" :: (MetricDimensionName)
  , "Value" :: (MetricDimensionValue)
  }
derive instance newtypeMetricDimension :: Newtype MetricDimension _
derive instance repGenericMetricDimension :: Generic MetricDimension _
instance showMetricDimension :: Show MetricDimension where show = genericShow
instance decodeMetricDimension :: Decode MetricDimension where decode = genericDecode options
instance encodeMetricDimension :: Encode MetricDimension where encode = genericEncode options

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
instance showMetricDimensionName :: Show MetricDimensionName where show = genericShow
instance decodeMetricDimensionName :: Decode MetricDimensionName where decode = genericDecode options
instance encodeMetricDimensionName :: Encode MetricDimensionName where encode = genericEncode options



newtype MetricDimensionValue = MetricDimensionValue String
derive instance newtypeMetricDimensionValue :: Newtype MetricDimensionValue _
derive instance repGenericMetricDimensionValue :: Generic MetricDimensionValue _
instance showMetricDimensionValue :: Show MetricDimensionValue where show = genericShow
instance decodeMetricDimensionValue :: Decode MetricDimensionValue where decode = genericDecode options
instance encodeMetricDimensionValue :: Encode MetricDimensionValue where encode = genericEncode options



newtype MetricDimensions = MetricDimensions (Array MetricDimension)
derive instance newtypeMetricDimensions :: Newtype MetricDimensions _
derive instance repGenericMetricDimensions :: Generic MetricDimensions _
instance showMetricDimensions :: Show MetricDimensions where show = genericShow
instance decodeMetricDimensions :: Decode MetricDimensions where decode = genericDecode options
instance encodeMetricDimensions :: Encode MetricDimensions where encode = genericEncode options



newtype MetricName = MetricName String
derive instance newtypeMetricName :: Newtype MetricName _
derive instance repGenericMetricName :: Generic MetricName _
instance showMetricName :: Show MetricName where show = genericShow
instance decodeMetricName :: Decode MetricName where decode = genericDecode options
instance encodeMetricName :: Encode MetricName where encode = genericEncode options



newtype MetricNamespace = MetricNamespace String
derive instance newtypeMetricNamespace :: Newtype MetricNamespace _
derive instance repGenericMetricNamespace :: Generic MetricNamespace _
instance showMetricNamespace :: Show MetricNamespace where show = genericShow
instance decodeMetricNamespace :: Decode MetricNamespace where decode = genericDecode options
instance encodeMetricNamespace :: Encode MetricNamespace where encode = genericEncode options



newtype MetricScale = MetricScale Number
derive instance newtypeMetricScale :: Newtype MetricScale _
derive instance repGenericMetricScale :: Generic MetricScale _
instance showMetricScale :: Show MetricScale where show = genericShow
instance decodeMetricScale :: Decode MetricScale where decode = genericDecode options
instance encodeMetricScale :: Encode MetricScale where encode = genericEncode options



newtype MetricStatistic = MetricStatistic String
derive instance newtypeMetricStatistic :: Newtype MetricStatistic _
derive instance repGenericMetricStatistic :: Generic MetricStatistic _
instance showMetricStatistic :: Show MetricStatistic where show = genericShow
instance decodeMetricStatistic :: Decode MetricStatistic where decode = genericDecode options
instance encodeMetricStatistic :: Encode MetricStatistic where encode = genericEncode options



newtype MetricType = MetricType String
derive instance newtypeMetricType :: Newtype MetricType _
derive instance repGenericMetricType :: Generic MetricType _
instance showMetricType :: Show MetricType where show = genericShow
instance decodeMetricType :: Decode MetricType where decode = genericDecode options
instance encodeMetricType :: Encode MetricType where encode = genericEncode options



newtype MetricUnit = MetricUnit String
derive instance newtypeMetricUnit :: Newtype MetricUnit _
derive instance repGenericMetricUnit :: Generic MetricUnit _
instance showMetricUnit :: Show MetricUnit where show = genericShow
instance decodeMetricUnit :: Decode MetricUnit where decode = genericDecode options
instance encodeMetricUnit :: Encode MetricUnit where encode = genericEncode options



newtype MinAdjustmentMagnitude = MinAdjustmentMagnitude Int
derive instance newtypeMinAdjustmentMagnitude :: Newtype MinAdjustmentMagnitude _
derive instance repGenericMinAdjustmentMagnitude :: Generic MinAdjustmentMagnitude _
instance showMinAdjustmentMagnitude :: Show MinAdjustmentMagnitude where show = genericShow
instance decodeMinAdjustmentMagnitude :: Decode MinAdjustmentMagnitude where decode = genericDecode options
instance encodeMinAdjustmentMagnitude :: Encode MinAdjustmentMagnitude where encode = genericEncode options



-- | <p>The specified object could not be found. For any operation that depends on the existence of a scalable target, this exception is thrown if the scalable target with the specified service namespace, resource ID, and scalable dimension does not exist. For any operation that deletes or deregisters a resource, this exception is thrown if the resource cannot be found.</p>
newtype ObjectNotFoundException = ObjectNotFoundException 
  { "Message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeObjectNotFoundException :: Newtype ObjectNotFoundException _
derive instance repGenericObjectNotFoundException :: Generic ObjectNotFoundException _
instance showObjectNotFoundException :: Show ObjectNotFoundException where show = genericShow
instance decodeObjectNotFoundException :: Decode ObjectNotFoundException where decode = genericDecode options
instance encodeObjectNotFoundException :: Encode ObjectNotFoundException where encode = genericEncode options

-- | Constructs ObjectNotFoundException from required parameters
newObjectNotFoundException :: ObjectNotFoundException
newObjectNotFoundException  = ObjectNotFoundException { "Message": (NullOrUndefined Nothing) }

-- | Constructs ObjectNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newObjectNotFoundException' :: ( { "Message" :: NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined (ErrorMessage) } ) -> ObjectNotFoundException
newObjectNotFoundException'  customize = (ObjectNotFoundException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype PolicyName = PolicyName String
derive instance newtypePolicyName :: Newtype PolicyName _
derive instance repGenericPolicyName :: Generic PolicyName _
instance showPolicyName :: Show PolicyName where show = genericShow
instance decodePolicyName :: Decode PolicyName where decode = genericDecode options
instance encodePolicyName :: Encode PolicyName where encode = genericEncode options



newtype PolicyType = PolicyType String
derive instance newtypePolicyType :: Newtype PolicyType _
derive instance repGenericPolicyType :: Generic PolicyType _
instance showPolicyType :: Show PolicyType where show = genericShow
instance decodePolicyType :: Decode PolicyType where decode = genericDecode options
instance encodePolicyType :: Encode PolicyType where encode = genericEncode options



-- | <p>Configures a predefined metric for a target tracking policy.</p>
newtype PredefinedMetricSpecification = PredefinedMetricSpecification 
  { "PredefinedMetricType" :: (MetricType)
  , "ResourceLabel" :: NullOrUndefined (ResourceLabel)
  }
derive instance newtypePredefinedMetricSpecification :: Newtype PredefinedMetricSpecification _
derive instance repGenericPredefinedMetricSpecification :: Generic PredefinedMetricSpecification _
instance showPredefinedMetricSpecification :: Show PredefinedMetricSpecification where show = genericShow
instance decodePredefinedMetricSpecification :: Decode PredefinedMetricSpecification where decode = genericDecode options
instance encodePredefinedMetricSpecification :: Encode PredefinedMetricSpecification where encode = genericEncode options

-- | Constructs PredefinedMetricSpecification from required parameters
newPredefinedMetricSpecification :: MetricType -> PredefinedMetricSpecification
newPredefinedMetricSpecification _PredefinedMetricType = PredefinedMetricSpecification { "PredefinedMetricType": _PredefinedMetricType, "ResourceLabel": (NullOrUndefined Nothing) }

-- | Constructs PredefinedMetricSpecification's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPredefinedMetricSpecification' :: MetricType -> ( { "PredefinedMetricType" :: (MetricType) , "ResourceLabel" :: NullOrUndefined (ResourceLabel) } -> {"PredefinedMetricType" :: (MetricType) , "ResourceLabel" :: NullOrUndefined (ResourceLabel) } ) -> PredefinedMetricSpecification
newPredefinedMetricSpecification' _PredefinedMetricType customize = (PredefinedMetricSpecification <<< customize) { "PredefinedMetricType": _PredefinedMetricType, "ResourceLabel": (NullOrUndefined Nothing) }



newtype PutScalingPolicyRequest = PutScalingPolicyRequest 
  { "PolicyName" :: (PolicyName)
  , "ServiceNamespace" :: (ServiceNamespace)
  , "ResourceId" :: (ResourceIdMaxLen1600)
  , "ScalableDimension" :: (ScalableDimension)
  , "PolicyType" :: NullOrUndefined (PolicyType)
  , "StepScalingPolicyConfiguration" :: NullOrUndefined (StepScalingPolicyConfiguration)
  , "TargetTrackingScalingPolicyConfiguration" :: NullOrUndefined (TargetTrackingScalingPolicyConfiguration)
  }
derive instance newtypePutScalingPolicyRequest :: Newtype PutScalingPolicyRequest _
derive instance repGenericPutScalingPolicyRequest :: Generic PutScalingPolicyRequest _
instance showPutScalingPolicyRequest :: Show PutScalingPolicyRequest where show = genericShow
instance decodePutScalingPolicyRequest :: Decode PutScalingPolicyRequest where decode = genericDecode options
instance encodePutScalingPolicyRequest :: Encode PutScalingPolicyRequest where encode = genericEncode options

-- | Constructs PutScalingPolicyRequest from required parameters
newPutScalingPolicyRequest :: PolicyName -> ResourceIdMaxLen1600 -> ScalableDimension -> ServiceNamespace -> PutScalingPolicyRequest
newPutScalingPolicyRequest _PolicyName _ResourceId _ScalableDimension _ServiceNamespace = PutScalingPolicyRequest { "PolicyName": _PolicyName, "ResourceId": _ResourceId, "ScalableDimension": _ScalableDimension, "ServiceNamespace": _ServiceNamespace, "PolicyType": (NullOrUndefined Nothing), "StepScalingPolicyConfiguration": (NullOrUndefined Nothing), "TargetTrackingScalingPolicyConfiguration": (NullOrUndefined Nothing) }

-- | Constructs PutScalingPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutScalingPolicyRequest' :: PolicyName -> ResourceIdMaxLen1600 -> ScalableDimension -> ServiceNamespace -> ( { "PolicyName" :: (PolicyName) , "ServiceNamespace" :: (ServiceNamespace) , "ResourceId" :: (ResourceIdMaxLen1600) , "ScalableDimension" :: (ScalableDimension) , "PolicyType" :: NullOrUndefined (PolicyType) , "StepScalingPolicyConfiguration" :: NullOrUndefined (StepScalingPolicyConfiguration) , "TargetTrackingScalingPolicyConfiguration" :: NullOrUndefined (TargetTrackingScalingPolicyConfiguration) } -> {"PolicyName" :: (PolicyName) , "ServiceNamespace" :: (ServiceNamespace) , "ResourceId" :: (ResourceIdMaxLen1600) , "ScalableDimension" :: (ScalableDimension) , "PolicyType" :: NullOrUndefined (PolicyType) , "StepScalingPolicyConfiguration" :: NullOrUndefined (StepScalingPolicyConfiguration) , "TargetTrackingScalingPolicyConfiguration" :: NullOrUndefined (TargetTrackingScalingPolicyConfiguration) } ) -> PutScalingPolicyRequest
newPutScalingPolicyRequest' _PolicyName _ResourceId _ScalableDimension _ServiceNamespace customize = (PutScalingPolicyRequest <<< customize) { "PolicyName": _PolicyName, "ResourceId": _ResourceId, "ScalableDimension": _ScalableDimension, "ServiceNamespace": _ServiceNamespace, "PolicyType": (NullOrUndefined Nothing), "StepScalingPolicyConfiguration": (NullOrUndefined Nothing), "TargetTrackingScalingPolicyConfiguration": (NullOrUndefined Nothing) }



newtype PutScalingPolicyResponse = PutScalingPolicyResponse 
  { "PolicyARN" :: (ResourceIdMaxLen1600)
  , "Alarms" :: NullOrUndefined (Alarms)
  }
derive instance newtypePutScalingPolicyResponse :: Newtype PutScalingPolicyResponse _
derive instance repGenericPutScalingPolicyResponse :: Generic PutScalingPolicyResponse _
instance showPutScalingPolicyResponse :: Show PutScalingPolicyResponse where show = genericShow
instance decodePutScalingPolicyResponse :: Decode PutScalingPolicyResponse where decode = genericDecode options
instance encodePutScalingPolicyResponse :: Encode PutScalingPolicyResponse where encode = genericEncode options

-- | Constructs PutScalingPolicyResponse from required parameters
newPutScalingPolicyResponse :: ResourceIdMaxLen1600 -> PutScalingPolicyResponse
newPutScalingPolicyResponse _PolicyARN = PutScalingPolicyResponse { "PolicyARN": _PolicyARN, "Alarms": (NullOrUndefined Nothing) }

-- | Constructs PutScalingPolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutScalingPolicyResponse' :: ResourceIdMaxLen1600 -> ( { "PolicyARN" :: (ResourceIdMaxLen1600) , "Alarms" :: NullOrUndefined (Alarms) } -> {"PolicyARN" :: (ResourceIdMaxLen1600) , "Alarms" :: NullOrUndefined (Alarms) } ) -> PutScalingPolicyResponse
newPutScalingPolicyResponse' _PolicyARN customize = (PutScalingPolicyResponse <<< customize) { "PolicyARN": _PolicyARN, "Alarms": (NullOrUndefined Nothing) }



newtype PutScheduledActionRequest = PutScheduledActionRequest 
  { "ServiceNamespace" :: (ServiceNamespace)
  , "Schedule" :: NullOrUndefined (ResourceIdMaxLen1600)
  , "ScheduledActionName" :: (ScheduledActionName)
  , "ResourceId" :: (ResourceIdMaxLen1600)
  , "ScalableDimension" :: NullOrUndefined (ScalableDimension)
  , "StartTime" :: NullOrUndefined (TimestampType)
  , "EndTime" :: NullOrUndefined (TimestampType)
  , "ScalableTargetAction" :: NullOrUndefined (ScalableTargetAction)
  }
derive instance newtypePutScheduledActionRequest :: Newtype PutScheduledActionRequest _
derive instance repGenericPutScheduledActionRequest :: Generic PutScheduledActionRequest _
instance showPutScheduledActionRequest :: Show PutScheduledActionRequest where show = genericShow
instance decodePutScheduledActionRequest :: Decode PutScheduledActionRequest where decode = genericDecode options
instance encodePutScheduledActionRequest :: Encode PutScheduledActionRequest where encode = genericEncode options

-- | Constructs PutScheduledActionRequest from required parameters
newPutScheduledActionRequest :: ResourceIdMaxLen1600 -> ScheduledActionName -> ServiceNamespace -> PutScheduledActionRequest
newPutScheduledActionRequest _ResourceId _ScheduledActionName _ServiceNamespace = PutScheduledActionRequest { "ResourceId": _ResourceId, "ScheduledActionName": _ScheduledActionName, "ServiceNamespace": _ServiceNamespace, "EndTime": (NullOrUndefined Nothing), "ScalableDimension": (NullOrUndefined Nothing), "ScalableTargetAction": (NullOrUndefined Nothing), "Schedule": (NullOrUndefined Nothing), "StartTime": (NullOrUndefined Nothing) }

-- | Constructs PutScheduledActionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutScheduledActionRequest' :: ResourceIdMaxLen1600 -> ScheduledActionName -> ServiceNamespace -> ( { "ServiceNamespace" :: (ServiceNamespace) , "Schedule" :: NullOrUndefined (ResourceIdMaxLen1600) , "ScheduledActionName" :: (ScheduledActionName) , "ResourceId" :: (ResourceIdMaxLen1600) , "ScalableDimension" :: NullOrUndefined (ScalableDimension) , "StartTime" :: NullOrUndefined (TimestampType) , "EndTime" :: NullOrUndefined (TimestampType) , "ScalableTargetAction" :: NullOrUndefined (ScalableTargetAction) } -> {"ServiceNamespace" :: (ServiceNamespace) , "Schedule" :: NullOrUndefined (ResourceIdMaxLen1600) , "ScheduledActionName" :: (ScheduledActionName) , "ResourceId" :: (ResourceIdMaxLen1600) , "ScalableDimension" :: NullOrUndefined (ScalableDimension) , "StartTime" :: NullOrUndefined (TimestampType) , "EndTime" :: NullOrUndefined (TimestampType) , "ScalableTargetAction" :: NullOrUndefined (ScalableTargetAction) } ) -> PutScheduledActionRequest
newPutScheduledActionRequest' _ResourceId _ScheduledActionName _ServiceNamespace customize = (PutScheduledActionRequest <<< customize) { "ResourceId": _ResourceId, "ScheduledActionName": _ScheduledActionName, "ServiceNamespace": _ServiceNamespace, "EndTime": (NullOrUndefined Nothing), "ScalableDimension": (NullOrUndefined Nothing), "ScalableTargetAction": (NullOrUndefined Nothing), "Schedule": (NullOrUndefined Nothing), "StartTime": (NullOrUndefined Nothing) }



newtype PutScheduledActionResponse = PutScheduledActionResponse Types.NoArguments
derive instance newtypePutScheduledActionResponse :: Newtype PutScheduledActionResponse _
derive instance repGenericPutScheduledActionResponse :: Generic PutScheduledActionResponse _
instance showPutScheduledActionResponse :: Show PutScheduledActionResponse where show = genericShow
instance decodePutScheduledActionResponse :: Decode PutScheduledActionResponse where decode = genericDecode options
instance encodePutScheduledActionResponse :: Encode PutScheduledActionResponse where encode = genericEncode options



newtype RegisterScalableTargetRequest = RegisterScalableTargetRequest 
  { "ServiceNamespace" :: (ServiceNamespace)
  , "ResourceId" :: (ResourceIdMaxLen1600)
  , "ScalableDimension" :: (ScalableDimension)
  , "MinCapacity" :: NullOrUndefined (ResourceCapacity)
  , "MaxCapacity" :: NullOrUndefined (ResourceCapacity)
  , "RoleARN" :: NullOrUndefined (ResourceIdMaxLen1600)
  }
derive instance newtypeRegisterScalableTargetRequest :: Newtype RegisterScalableTargetRequest _
derive instance repGenericRegisterScalableTargetRequest :: Generic RegisterScalableTargetRequest _
instance showRegisterScalableTargetRequest :: Show RegisterScalableTargetRequest where show = genericShow
instance decodeRegisterScalableTargetRequest :: Decode RegisterScalableTargetRequest where decode = genericDecode options
instance encodeRegisterScalableTargetRequest :: Encode RegisterScalableTargetRequest where encode = genericEncode options

-- | Constructs RegisterScalableTargetRequest from required parameters
newRegisterScalableTargetRequest :: ResourceIdMaxLen1600 -> ScalableDimension -> ServiceNamespace -> RegisterScalableTargetRequest
newRegisterScalableTargetRequest _ResourceId _ScalableDimension _ServiceNamespace = RegisterScalableTargetRequest { "ResourceId": _ResourceId, "ScalableDimension": _ScalableDimension, "ServiceNamespace": _ServiceNamespace, "MaxCapacity": (NullOrUndefined Nothing), "MinCapacity": (NullOrUndefined Nothing), "RoleARN": (NullOrUndefined Nothing) }

-- | Constructs RegisterScalableTargetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterScalableTargetRequest' :: ResourceIdMaxLen1600 -> ScalableDimension -> ServiceNamespace -> ( { "ServiceNamespace" :: (ServiceNamespace) , "ResourceId" :: (ResourceIdMaxLen1600) , "ScalableDimension" :: (ScalableDimension) , "MinCapacity" :: NullOrUndefined (ResourceCapacity) , "MaxCapacity" :: NullOrUndefined (ResourceCapacity) , "RoleARN" :: NullOrUndefined (ResourceIdMaxLen1600) } -> {"ServiceNamespace" :: (ServiceNamespace) , "ResourceId" :: (ResourceIdMaxLen1600) , "ScalableDimension" :: (ScalableDimension) , "MinCapacity" :: NullOrUndefined (ResourceCapacity) , "MaxCapacity" :: NullOrUndefined (ResourceCapacity) , "RoleARN" :: NullOrUndefined (ResourceIdMaxLen1600) } ) -> RegisterScalableTargetRequest
newRegisterScalableTargetRequest' _ResourceId _ScalableDimension _ServiceNamespace customize = (RegisterScalableTargetRequest <<< customize) { "ResourceId": _ResourceId, "ScalableDimension": _ScalableDimension, "ServiceNamespace": _ServiceNamespace, "MaxCapacity": (NullOrUndefined Nothing), "MinCapacity": (NullOrUndefined Nothing), "RoleARN": (NullOrUndefined Nothing) }



newtype RegisterScalableTargetResponse = RegisterScalableTargetResponse Types.NoArguments
derive instance newtypeRegisterScalableTargetResponse :: Newtype RegisterScalableTargetResponse _
derive instance repGenericRegisterScalableTargetResponse :: Generic RegisterScalableTargetResponse _
instance showRegisterScalableTargetResponse :: Show RegisterScalableTargetResponse where show = genericShow
instance decodeRegisterScalableTargetResponse :: Decode RegisterScalableTargetResponse where decode = genericDecode options
instance encodeRegisterScalableTargetResponse :: Encode RegisterScalableTargetResponse where encode = genericEncode options



newtype ResourceCapacity = ResourceCapacity Int
derive instance newtypeResourceCapacity :: Newtype ResourceCapacity _
derive instance repGenericResourceCapacity :: Generic ResourceCapacity _
instance showResourceCapacity :: Show ResourceCapacity where show = genericShow
instance decodeResourceCapacity :: Decode ResourceCapacity where decode = genericDecode options
instance encodeResourceCapacity :: Encode ResourceCapacity where encode = genericEncode options



newtype ResourceId = ResourceId String
derive instance newtypeResourceId :: Newtype ResourceId _
derive instance repGenericResourceId :: Generic ResourceId _
instance showResourceId :: Show ResourceId where show = genericShow
instance decodeResourceId :: Decode ResourceId where decode = genericDecode options
instance encodeResourceId :: Encode ResourceId where encode = genericEncode options



newtype ResourceIdMaxLen1600 = ResourceIdMaxLen1600 String
derive instance newtypeResourceIdMaxLen1600 :: Newtype ResourceIdMaxLen1600 _
derive instance repGenericResourceIdMaxLen1600 :: Generic ResourceIdMaxLen1600 _
instance showResourceIdMaxLen1600 :: Show ResourceIdMaxLen1600 where show = genericShow
instance decodeResourceIdMaxLen1600 :: Decode ResourceIdMaxLen1600 where decode = genericDecode options
instance encodeResourceIdMaxLen1600 :: Encode ResourceIdMaxLen1600 where encode = genericEncode options



newtype ResourceIdsMaxLen1600 = ResourceIdsMaxLen1600 (Array ResourceIdMaxLen1600)
derive instance newtypeResourceIdsMaxLen1600 :: Newtype ResourceIdsMaxLen1600 _
derive instance repGenericResourceIdsMaxLen1600 :: Generic ResourceIdsMaxLen1600 _
instance showResourceIdsMaxLen1600 :: Show ResourceIdsMaxLen1600 where show = genericShow
instance decodeResourceIdsMaxLen1600 :: Decode ResourceIdsMaxLen1600 where decode = genericDecode options
instance encodeResourceIdsMaxLen1600 :: Encode ResourceIdsMaxLen1600 where encode = genericEncode options



newtype ResourceLabel = ResourceLabel String
derive instance newtypeResourceLabel :: Newtype ResourceLabel _
derive instance repGenericResourceLabel :: Generic ResourceLabel _
instance showResourceLabel :: Show ResourceLabel where show = genericShow
instance decodeResourceLabel :: Decode ResourceLabel where decode = genericDecode options
instance encodeResourceLabel :: Encode ResourceLabel where encode = genericEncode options



newtype ScalableDimension = ScalableDimension String
derive instance newtypeScalableDimension :: Newtype ScalableDimension _
derive instance repGenericScalableDimension :: Generic ScalableDimension _
instance showScalableDimension :: Show ScalableDimension where show = genericShow
instance decodeScalableDimension :: Decode ScalableDimension where decode = genericDecode options
instance encodeScalableDimension :: Encode ScalableDimension where encode = genericEncode options



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
instance showScalableTarget :: Show ScalableTarget where show = genericShow
instance decodeScalableTarget :: Decode ScalableTarget where decode = genericDecode options
instance encodeScalableTarget :: Encode ScalableTarget where encode = genericEncode options

-- | Constructs ScalableTarget from required parameters
newScalableTarget :: TimestampType -> ResourceCapacity -> ResourceCapacity -> ResourceIdMaxLen1600 -> ResourceIdMaxLen1600 -> ScalableDimension -> ServiceNamespace -> ScalableTarget
newScalableTarget _CreationTime _MaxCapacity _MinCapacity _ResourceId _RoleARN _ScalableDimension _ServiceNamespace = ScalableTarget { "CreationTime": _CreationTime, "MaxCapacity": _MaxCapacity, "MinCapacity": _MinCapacity, "ResourceId": _ResourceId, "RoleARN": _RoleARN, "ScalableDimension": _ScalableDimension, "ServiceNamespace": _ServiceNamespace }

-- | Constructs ScalableTarget's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newScalableTarget' :: TimestampType -> ResourceCapacity -> ResourceCapacity -> ResourceIdMaxLen1600 -> ResourceIdMaxLen1600 -> ScalableDimension -> ServiceNamespace -> ( { "ServiceNamespace" :: (ServiceNamespace) , "ResourceId" :: (ResourceIdMaxLen1600) , "ScalableDimension" :: (ScalableDimension) , "MinCapacity" :: (ResourceCapacity) , "MaxCapacity" :: (ResourceCapacity) , "RoleARN" :: (ResourceIdMaxLen1600) , "CreationTime" :: (TimestampType) } -> {"ServiceNamespace" :: (ServiceNamespace) , "ResourceId" :: (ResourceIdMaxLen1600) , "ScalableDimension" :: (ScalableDimension) , "MinCapacity" :: (ResourceCapacity) , "MaxCapacity" :: (ResourceCapacity) , "RoleARN" :: (ResourceIdMaxLen1600) , "CreationTime" :: (TimestampType) } ) -> ScalableTarget
newScalableTarget' _CreationTime _MaxCapacity _MinCapacity _ResourceId _RoleARN _ScalableDimension _ServiceNamespace customize = (ScalableTarget <<< customize) { "CreationTime": _CreationTime, "MaxCapacity": _MaxCapacity, "MinCapacity": _MinCapacity, "ResourceId": _ResourceId, "RoleARN": _RoleARN, "ScalableDimension": _ScalableDimension, "ServiceNamespace": _ServiceNamespace }



-- | <p>Represents the minimum and maximum capacity for a scheduled action.</p>
newtype ScalableTargetAction = ScalableTargetAction 
  { "MinCapacity" :: NullOrUndefined (ResourceCapacity)
  , "MaxCapacity" :: NullOrUndefined (ResourceCapacity)
  }
derive instance newtypeScalableTargetAction :: Newtype ScalableTargetAction _
derive instance repGenericScalableTargetAction :: Generic ScalableTargetAction _
instance showScalableTargetAction :: Show ScalableTargetAction where show = genericShow
instance decodeScalableTargetAction :: Decode ScalableTargetAction where decode = genericDecode options
instance encodeScalableTargetAction :: Encode ScalableTargetAction where encode = genericEncode options

-- | Constructs ScalableTargetAction from required parameters
newScalableTargetAction :: ScalableTargetAction
newScalableTargetAction  = ScalableTargetAction { "MaxCapacity": (NullOrUndefined Nothing), "MinCapacity": (NullOrUndefined Nothing) }

-- | Constructs ScalableTargetAction's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newScalableTargetAction' :: ( { "MinCapacity" :: NullOrUndefined (ResourceCapacity) , "MaxCapacity" :: NullOrUndefined (ResourceCapacity) } -> {"MinCapacity" :: NullOrUndefined (ResourceCapacity) , "MaxCapacity" :: NullOrUndefined (ResourceCapacity) } ) -> ScalableTargetAction
newScalableTargetAction'  customize = (ScalableTargetAction <<< customize) { "MaxCapacity": (NullOrUndefined Nothing), "MinCapacity": (NullOrUndefined Nothing) }



newtype ScalableTargets = ScalableTargets (Array ScalableTarget)
derive instance newtypeScalableTargets :: Newtype ScalableTargets _
derive instance repGenericScalableTargets :: Generic ScalableTargets _
instance showScalableTargets :: Show ScalableTargets where show = genericShow
instance decodeScalableTargets :: Decode ScalableTargets where decode = genericDecode options
instance encodeScalableTargets :: Encode ScalableTargets where encode = genericEncode options



newtype ScalingActivities = ScalingActivities (Array ScalingActivity)
derive instance newtypeScalingActivities :: Newtype ScalingActivities _
derive instance repGenericScalingActivities :: Generic ScalingActivities _
instance showScalingActivities :: Show ScalingActivities where show = genericShow
instance decodeScalingActivities :: Decode ScalingActivities where decode = genericDecode options
instance encodeScalingActivities :: Encode ScalingActivities where encode = genericEncode options



-- | <p>Represents a scaling activity.</p>
newtype ScalingActivity = ScalingActivity 
  { "ActivityId" :: (ResourceId)
  , "ServiceNamespace" :: (ServiceNamespace)
  , "ResourceId" :: (ResourceIdMaxLen1600)
  , "ScalableDimension" :: (ScalableDimension)
  , "Description" :: (XmlString)
  , "Cause" :: (XmlString)
  , "StartTime" :: (TimestampType)
  , "EndTime" :: NullOrUndefined (TimestampType)
  , "StatusCode" :: (ScalingActivityStatusCode)
  , "StatusMessage" :: NullOrUndefined (XmlString)
  , "Details" :: NullOrUndefined (XmlString)
  }
derive instance newtypeScalingActivity :: Newtype ScalingActivity _
derive instance repGenericScalingActivity :: Generic ScalingActivity _
instance showScalingActivity :: Show ScalingActivity where show = genericShow
instance decodeScalingActivity :: Decode ScalingActivity where decode = genericDecode options
instance encodeScalingActivity :: Encode ScalingActivity where encode = genericEncode options

-- | Constructs ScalingActivity from required parameters
newScalingActivity :: ResourceId -> XmlString -> XmlString -> ResourceIdMaxLen1600 -> ScalableDimension -> ServiceNamespace -> TimestampType -> ScalingActivityStatusCode -> ScalingActivity
newScalingActivity _ActivityId _Cause _Description _ResourceId _ScalableDimension _ServiceNamespace _StartTime _StatusCode = ScalingActivity { "ActivityId": _ActivityId, "Cause": _Cause, "Description": _Description, "ResourceId": _ResourceId, "ScalableDimension": _ScalableDimension, "ServiceNamespace": _ServiceNamespace, "StartTime": _StartTime, "StatusCode": _StatusCode, "Details": (NullOrUndefined Nothing), "EndTime": (NullOrUndefined Nothing), "StatusMessage": (NullOrUndefined Nothing) }

-- | Constructs ScalingActivity's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newScalingActivity' :: ResourceId -> XmlString -> XmlString -> ResourceIdMaxLen1600 -> ScalableDimension -> ServiceNamespace -> TimestampType -> ScalingActivityStatusCode -> ( { "ActivityId" :: (ResourceId) , "ServiceNamespace" :: (ServiceNamespace) , "ResourceId" :: (ResourceIdMaxLen1600) , "ScalableDimension" :: (ScalableDimension) , "Description" :: (XmlString) , "Cause" :: (XmlString) , "StartTime" :: (TimestampType) , "EndTime" :: NullOrUndefined (TimestampType) , "StatusCode" :: (ScalingActivityStatusCode) , "StatusMessage" :: NullOrUndefined (XmlString) , "Details" :: NullOrUndefined (XmlString) } -> {"ActivityId" :: (ResourceId) , "ServiceNamespace" :: (ServiceNamespace) , "ResourceId" :: (ResourceIdMaxLen1600) , "ScalableDimension" :: (ScalableDimension) , "Description" :: (XmlString) , "Cause" :: (XmlString) , "StartTime" :: (TimestampType) , "EndTime" :: NullOrUndefined (TimestampType) , "StatusCode" :: (ScalingActivityStatusCode) , "StatusMessage" :: NullOrUndefined (XmlString) , "Details" :: NullOrUndefined (XmlString) } ) -> ScalingActivity
newScalingActivity' _ActivityId _Cause _Description _ResourceId _ScalableDimension _ServiceNamespace _StartTime _StatusCode customize = (ScalingActivity <<< customize) { "ActivityId": _ActivityId, "Cause": _Cause, "Description": _Description, "ResourceId": _ResourceId, "ScalableDimension": _ScalableDimension, "ServiceNamespace": _ServiceNamespace, "StartTime": _StartTime, "StatusCode": _StatusCode, "Details": (NullOrUndefined Nothing), "EndTime": (NullOrUndefined Nothing), "StatusMessage": (NullOrUndefined Nothing) }



newtype ScalingActivityStatusCode = ScalingActivityStatusCode String
derive instance newtypeScalingActivityStatusCode :: Newtype ScalingActivityStatusCode _
derive instance repGenericScalingActivityStatusCode :: Generic ScalingActivityStatusCode _
instance showScalingActivityStatusCode :: Show ScalingActivityStatusCode where show = genericShow
instance decodeScalingActivityStatusCode :: Decode ScalingActivityStatusCode where decode = genericDecode options
instance encodeScalingActivityStatusCode :: Encode ScalingActivityStatusCode where encode = genericEncode options



newtype ScalingAdjustment = ScalingAdjustment Int
derive instance newtypeScalingAdjustment :: Newtype ScalingAdjustment _
derive instance repGenericScalingAdjustment :: Generic ScalingAdjustment _
instance showScalingAdjustment :: Show ScalingAdjustment where show = genericShow
instance decodeScalingAdjustment :: Decode ScalingAdjustment where decode = genericDecode options
instance encodeScalingAdjustment :: Encode ScalingAdjustment where encode = genericEncode options



newtype ScalingPolicies = ScalingPolicies (Array ScalingPolicy)
derive instance newtypeScalingPolicies :: Newtype ScalingPolicies _
derive instance repGenericScalingPolicies :: Generic ScalingPolicies _
instance showScalingPolicies :: Show ScalingPolicies where show = genericShow
instance decodeScalingPolicies :: Decode ScalingPolicies where decode = genericDecode options
instance encodeScalingPolicies :: Encode ScalingPolicies where encode = genericEncode options



-- | <p>Represents a scaling policy.</p>
newtype ScalingPolicy = ScalingPolicy 
  { "PolicyARN" :: (ResourceIdMaxLen1600)
  , "PolicyName" :: (PolicyName)
  , "ServiceNamespace" :: (ServiceNamespace)
  , "ResourceId" :: (ResourceIdMaxLen1600)
  , "ScalableDimension" :: (ScalableDimension)
  , "PolicyType" :: (PolicyType)
  , "StepScalingPolicyConfiguration" :: NullOrUndefined (StepScalingPolicyConfiguration)
  , "TargetTrackingScalingPolicyConfiguration" :: NullOrUndefined (TargetTrackingScalingPolicyConfiguration)
  , "Alarms" :: NullOrUndefined (Alarms)
  , "CreationTime" :: (TimestampType)
  }
derive instance newtypeScalingPolicy :: Newtype ScalingPolicy _
derive instance repGenericScalingPolicy :: Generic ScalingPolicy _
instance showScalingPolicy :: Show ScalingPolicy where show = genericShow
instance decodeScalingPolicy :: Decode ScalingPolicy where decode = genericDecode options
instance encodeScalingPolicy :: Encode ScalingPolicy where encode = genericEncode options

-- | Constructs ScalingPolicy from required parameters
newScalingPolicy :: TimestampType -> ResourceIdMaxLen1600 -> PolicyName -> PolicyType -> ResourceIdMaxLen1600 -> ScalableDimension -> ServiceNamespace -> ScalingPolicy
newScalingPolicy _CreationTime _PolicyARN _PolicyName _PolicyType _ResourceId _ScalableDimension _ServiceNamespace = ScalingPolicy { "CreationTime": _CreationTime, "PolicyARN": _PolicyARN, "PolicyName": _PolicyName, "PolicyType": _PolicyType, "ResourceId": _ResourceId, "ScalableDimension": _ScalableDimension, "ServiceNamespace": _ServiceNamespace, "Alarms": (NullOrUndefined Nothing), "StepScalingPolicyConfiguration": (NullOrUndefined Nothing), "TargetTrackingScalingPolicyConfiguration": (NullOrUndefined Nothing) }

-- | Constructs ScalingPolicy's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newScalingPolicy' :: TimestampType -> ResourceIdMaxLen1600 -> PolicyName -> PolicyType -> ResourceIdMaxLen1600 -> ScalableDimension -> ServiceNamespace -> ( { "PolicyARN" :: (ResourceIdMaxLen1600) , "PolicyName" :: (PolicyName) , "ServiceNamespace" :: (ServiceNamespace) , "ResourceId" :: (ResourceIdMaxLen1600) , "ScalableDimension" :: (ScalableDimension) , "PolicyType" :: (PolicyType) , "StepScalingPolicyConfiguration" :: NullOrUndefined (StepScalingPolicyConfiguration) , "TargetTrackingScalingPolicyConfiguration" :: NullOrUndefined (TargetTrackingScalingPolicyConfiguration) , "Alarms" :: NullOrUndefined (Alarms) , "CreationTime" :: (TimestampType) } -> {"PolicyARN" :: (ResourceIdMaxLen1600) , "PolicyName" :: (PolicyName) , "ServiceNamespace" :: (ServiceNamespace) , "ResourceId" :: (ResourceIdMaxLen1600) , "ScalableDimension" :: (ScalableDimension) , "PolicyType" :: (PolicyType) , "StepScalingPolicyConfiguration" :: NullOrUndefined (StepScalingPolicyConfiguration) , "TargetTrackingScalingPolicyConfiguration" :: NullOrUndefined (TargetTrackingScalingPolicyConfiguration) , "Alarms" :: NullOrUndefined (Alarms) , "CreationTime" :: (TimestampType) } ) -> ScalingPolicy
newScalingPolicy' _CreationTime _PolicyARN _PolicyName _PolicyType _ResourceId _ScalableDimension _ServiceNamespace customize = (ScalingPolicy <<< customize) { "CreationTime": _CreationTime, "PolicyARN": _PolicyARN, "PolicyName": _PolicyName, "PolicyType": _PolicyType, "ResourceId": _ResourceId, "ScalableDimension": _ScalableDimension, "ServiceNamespace": _ServiceNamespace, "Alarms": (NullOrUndefined Nothing), "StepScalingPolicyConfiguration": (NullOrUndefined Nothing), "TargetTrackingScalingPolicyConfiguration": (NullOrUndefined Nothing) }



-- | <p>Represents a scheduled action.</p>
newtype ScheduledAction = ScheduledAction 
  { "ScheduledActionName" :: (ScheduledActionName)
  , "ScheduledActionARN" :: (ResourceIdMaxLen1600)
  , "ServiceNamespace" :: (ServiceNamespace)
  , "Schedule" :: (ResourceIdMaxLen1600)
  , "ResourceId" :: (ResourceIdMaxLen1600)
  , "ScalableDimension" :: NullOrUndefined (ScalableDimension)
  , "StartTime" :: NullOrUndefined (TimestampType)
  , "EndTime" :: NullOrUndefined (TimestampType)
  , "ScalableTargetAction" :: NullOrUndefined (ScalableTargetAction)
  , "CreationTime" :: (TimestampType)
  }
derive instance newtypeScheduledAction :: Newtype ScheduledAction _
derive instance repGenericScheduledAction :: Generic ScheduledAction _
instance showScheduledAction :: Show ScheduledAction where show = genericShow
instance decodeScheduledAction :: Decode ScheduledAction where decode = genericDecode options
instance encodeScheduledAction :: Encode ScheduledAction where encode = genericEncode options

-- | Constructs ScheduledAction from required parameters
newScheduledAction :: TimestampType -> ResourceIdMaxLen1600 -> ResourceIdMaxLen1600 -> ResourceIdMaxLen1600 -> ScheduledActionName -> ServiceNamespace -> ScheduledAction
newScheduledAction _CreationTime _ResourceId _Schedule _ScheduledActionARN _ScheduledActionName _ServiceNamespace = ScheduledAction { "CreationTime": _CreationTime, "ResourceId": _ResourceId, "Schedule": _Schedule, "ScheduledActionARN": _ScheduledActionARN, "ScheduledActionName": _ScheduledActionName, "ServiceNamespace": _ServiceNamespace, "EndTime": (NullOrUndefined Nothing), "ScalableDimension": (NullOrUndefined Nothing), "ScalableTargetAction": (NullOrUndefined Nothing), "StartTime": (NullOrUndefined Nothing) }

-- | Constructs ScheduledAction's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newScheduledAction' :: TimestampType -> ResourceIdMaxLen1600 -> ResourceIdMaxLen1600 -> ResourceIdMaxLen1600 -> ScheduledActionName -> ServiceNamespace -> ( { "ScheduledActionName" :: (ScheduledActionName) , "ScheduledActionARN" :: (ResourceIdMaxLen1600) , "ServiceNamespace" :: (ServiceNamespace) , "Schedule" :: (ResourceIdMaxLen1600) , "ResourceId" :: (ResourceIdMaxLen1600) , "ScalableDimension" :: NullOrUndefined (ScalableDimension) , "StartTime" :: NullOrUndefined (TimestampType) , "EndTime" :: NullOrUndefined (TimestampType) , "ScalableTargetAction" :: NullOrUndefined (ScalableTargetAction) , "CreationTime" :: (TimestampType) } -> {"ScheduledActionName" :: (ScheduledActionName) , "ScheduledActionARN" :: (ResourceIdMaxLen1600) , "ServiceNamespace" :: (ServiceNamespace) , "Schedule" :: (ResourceIdMaxLen1600) , "ResourceId" :: (ResourceIdMaxLen1600) , "ScalableDimension" :: NullOrUndefined (ScalableDimension) , "StartTime" :: NullOrUndefined (TimestampType) , "EndTime" :: NullOrUndefined (TimestampType) , "ScalableTargetAction" :: NullOrUndefined (ScalableTargetAction) , "CreationTime" :: (TimestampType) } ) -> ScheduledAction
newScheduledAction' _CreationTime _ResourceId _Schedule _ScheduledActionARN _ScheduledActionName _ServiceNamespace customize = (ScheduledAction <<< customize) { "CreationTime": _CreationTime, "ResourceId": _ResourceId, "Schedule": _Schedule, "ScheduledActionARN": _ScheduledActionARN, "ScheduledActionName": _ScheduledActionName, "ServiceNamespace": _ServiceNamespace, "EndTime": (NullOrUndefined Nothing), "ScalableDimension": (NullOrUndefined Nothing), "ScalableTargetAction": (NullOrUndefined Nothing), "StartTime": (NullOrUndefined Nothing) }



newtype ScheduledActionName = ScheduledActionName String
derive instance newtypeScheduledActionName :: Newtype ScheduledActionName _
derive instance repGenericScheduledActionName :: Generic ScheduledActionName _
instance showScheduledActionName :: Show ScheduledActionName where show = genericShow
instance decodeScheduledActionName :: Decode ScheduledActionName where decode = genericDecode options
instance encodeScheduledActionName :: Encode ScheduledActionName where encode = genericEncode options



newtype ScheduledActions = ScheduledActions (Array ScheduledAction)
derive instance newtypeScheduledActions :: Newtype ScheduledActions _
derive instance repGenericScheduledActions :: Generic ScheduledActions _
instance showScheduledActions :: Show ScheduledActions where show = genericShow
instance decodeScheduledActions :: Decode ScheduledActions where decode = genericDecode options
instance encodeScheduledActions :: Encode ScheduledActions where encode = genericEncode options



newtype ServiceNamespace = ServiceNamespace String
derive instance newtypeServiceNamespace :: Newtype ServiceNamespace _
derive instance repGenericServiceNamespace :: Generic ServiceNamespace _
instance showServiceNamespace :: Show ServiceNamespace where show = genericShow
instance decodeServiceNamespace :: Decode ServiceNamespace where decode = genericDecode options
instance encodeServiceNamespace :: Encode ServiceNamespace where encode = genericEncode options



-- | <p>Represents a step adjustment for a <a>StepScalingPolicyConfiguration</a>. Describes an adjustment based on the difference between the value of the aggregated CloudWatch metric and the breach threshold that you've defined for the alarm. </p> <p>For the following examples, suppose that you have an alarm with a breach threshold of 50:</p> <ul> <li> <p>To trigger the adjustment when the metric is greater than or equal to 50 and less than 60, specify a lower bound of 0 and an upper bound of 10.</p> </li> <li> <p>To trigger the adjustment when the metric is greater than 40 and less than or equal to 50, specify a lower bound of -10 and an upper bound of 0.</p> </li> </ul> <p>There are a few rules for the step adjustments for your step policy:</p> <ul> <li> <p>The ranges of your step adjustments can't overlap or have a gap.</p> </li> <li> <p>At most one step adjustment can have a null lower bound. If one step adjustment has a negative lower bound, then there must be a step adjustment with a null lower bound.</p> </li> <li> <p>At most one step adjustment can have a null upper bound. If one step adjustment has a positive upper bound, then there must be a step adjustment with a null upper bound.</p> </li> <li> <p>The upper and lower bound can't be null in the same step adjustment.</p> </li> </ul>
newtype StepAdjustment = StepAdjustment 
  { "MetricIntervalLowerBound" :: NullOrUndefined (MetricScale)
  , "MetricIntervalUpperBound" :: NullOrUndefined (MetricScale)
  , "ScalingAdjustment" :: (ScalingAdjustment)
  }
derive instance newtypeStepAdjustment :: Newtype StepAdjustment _
derive instance repGenericStepAdjustment :: Generic StepAdjustment _
instance showStepAdjustment :: Show StepAdjustment where show = genericShow
instance decodeStepAdjustment :: Decode StepAdjustment where decode = genericDecode options
instance encodeStepAdjustment :: Encode StepAdjustment where encode = genericEncode options

-- | Constructs StepAdjustment from required parameters
newStepAdjustment :: ScalingAdjustment -> StepAdjustment
newStepAdjustment _ScalingAdjustment = StepAdjustment { "ScalingAdjustment": _ScalingAdjustment, "MetricIntervalLowerBound": (NullOrUndefined Nothing), "MetricIntervalUpperBound": (NullOrUndefined Nothing) }

-- | Constructs StepAdjustment's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStepAdjustment' :: ScalingAdjustment -> ( { "MetricIntervalLowerBound" :: NullOrUndefined (MetricScale) , "MetricIntervalUpperBound" :: NullOrUndefined (MetricScale) , "ScalingAdjustment" :: (ScalingAdjustment) } -> {"MetricIntervalLowerBound" :: NullOrUndefined (MetricScale) , "MetricIntervalUpperBound" :: NullOrUndefined (MetricScale) , "ScalingAdjustment" :: (ScalingAdjustment) } ) -> StepAdjustment
newStepAdjustment' _ScalingAdjustment customize = (StepAdjustment <<< customize) { "ScalingAdjustment": _ScalingAdjustment, "MetricIntervalLowerBound": (NullOrUndefined Nothing), "MetricIntervalUpperBound": (NullOrUndefined Nothing) }



newtype StepAdjustments = StepAdjustments (Array StepAdjustment)
derive instance newtypeStepAdjustments :: Newtype StepAdjustments _
derive instance repGenericStepAdjustments :: Generic StepAdjustments _
instance showStepAdjustments :: Show StepAdjustments where show = genericShow
instance decodeStepAdjustments :: Decode StepAdjustments where decode = genericDecode options
instance encodeStepAdjustments :: Encode StepAdjustments where encode = genericEncode options



-- | <p>Represents a step scaling policy configuration.</p>
newtype StepScalingPolicyConfiguration = StepScalingPolicyConfiguration 
  { "AdjustmentType" :: NullOrUndefined (AdjustmentType)
  , "StepAdjustments" :: NullOrUndefined (StepAdjustments)
  , "MinAdjustmentMagnitude" :: NullOrUndefined (MinAdjustmentMagnitude)
  , "Cooldown" :: NullOrUndefined (Cooldown)
  , "MetricAggregationType" :: NullOrUndefined (MetricAggregationType)
  }
derive instance newtypeStepScalingPolicyConfiguration :: Newtype StepScalingPolicyConfiguration _
derive instance repGenericStepScalingPolicyConfiguration :: Generic StepScalingPolicyConfiguration _
instance showStepScalingPolicyConfiguration :: Show StepScalingPolicyConfiguration where show = genericShow
instance decodeStepScalingPolicyConfiguration :: Decode StepScalingPolicyConfiguration where decode = genericDecode options
instance encodeStepScalingPolicyConfiguration :: Encode StepScalingPolicyConfiguration where encode = genericEncode options

-- | Constructs StepScalingPolicyConfiguration from required parameters
newStepScalingPolicyConfiguration :: StepScalingPolicyConfiguration
newStepScalingPolicyConfiguration  = StepScalingPolicyConfiguration { "AdjustmentType": (NullOrUndefined Nothing), "Cooldown": (NullOrUndefined Nothing), "MetricAggregationType": (NullOrUndefined Nothing), "MinAdjustmentMagnitude": (NullOrUndefined Nothing), "StepAdjustments": (NullOrUndefined Nothing) }

-- | Constructs StepScalingPolicyConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStepScalingPolicyConfiguration' :: ( { "AdjustmentType" :: NullOrUndefined (AdjustmentType) , "StepAdjustments" :: NullOrUndefined (StepAdjustments) , "MinAdjustmentMagnitude" :: NullOrUndefined (MinAdjustmentMagnitude) , "Cooldown" :: NullOrUndefined (Cooldown) , "MetricAggregationType" :: NullOrUndefined (MetricAggregationType) } -> {"AdjustmentType" :: NullOrUndefined (AdjustmentType) , "StepAdjustments" :: NullOrUndefined (StepAdjustments) , "MinAdjustmentMagnitude" :: NullOrUndefined (MinAdjustmentMagnitude) , "Cooldown" :: NullOrUndefined (Cooldown) , "MetricAggregationType" :: NullOrUndefined (MetricAggregationType) } ) -> StepScalingPolicyConfiguration
newStepScalingPolicyConfiguration'  customize = (StepScalingPolicyConfiguration <<< customize) { "AdjustmentType": (NullOrUndefined Nothing), "Cooldown": (NullOrUndefined Nothing), "MetricAggregationType": (NullOrUndefined Nothing), "MinAdjustmentMagnitude": (NullOrUndefined Nothing), "StepAdjustments": (NullOrUndefined Nothing) }



-- | <p>Represents a target tracking scaling policy configuration.</p>
newtype TargetTrackingScalingPolicyConfiguration = TargetTrackingScalingPolicyConfiguration 
  { "TargetValue" :: (MetricScale)
  , "PredefinedMetricSpecification" :: NullOrUndefined (PredefinedMetricSpecification)
  , "CustomizedMetricSpecification" :: NullOrUndefined (CustomizedMetricSpecification)
  , "ScaleOutCooldown" :: NullOrUndefined (Cooldown)
  , "ScaleInCooldown" :: NullOrUndefined (Cooldown)
  , "DisableScaleIn" :: NullOrUndefined (DisableScaleIn)
  }
derive instance newtypeTargetTrackingScalingPolicyConfiguration :: Newtype TargetTrackingScalingPolicyConfiguration _
derive instance repGenericTargetTrackingScalingPolicyConfiguration :: Generic TargetTrackingScalingPolicyConfiguration _
instance showTargetTrackingScalingPolicyConfiguration :: Show TargetTrackingScalingPolicyConfiguration where show = genericShow
instance decodeTargetTrackingScalingPolicyConfiguration :: Decode TargetTrackingScalingPolicyConfiguration where decode = genericDecode options
instance encodeTargetTrackingScalingPolicyConfiguration :: Encode TargetTrackingScalingPolicyConfiguration where encode = genericEncode options

-- | Constructs TargetTrackingScalingPolicyConfiguration from required parameters
newTargetTrackingScalingPolicyConfiguration :: MetricScale -> TargetTrackingScalingPolicyConfiguration
newTargetTrackingScalingPolicyConfiguration _TargetValue = TargetTrackingScalingPolicyConfiguration { "TargetValue": _TargetValue, "CustomizedMetricSpecification": (NullOrUndefined Nothing), "DisableScaleIn": (NullOrUndefined Nothing), "PredefinedMetricSpecification": (NullOrUndefined Nothing), "ScaleInCooldown": (NullOrUndefined Nothing), "ScaleOutCooldown": (NullOrUndefined Nothing) }

-- | Constructs TargetTrackingScalingPolicyConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTargetTrackingScalingPolicyConfiguration' :: MetricScale -> ( { "TargetValue" :: (MetricScale) , "PredefinedMetricSpecification" :: NullOrUndefined (PredefinedMetricSpecification) , "CustomizedMetricSpecification" :: NullOrUndefined (CustomizedMetricSpecification) , "ScaleOutCooldown" :: NullOrUndefined (Cooldown) , "ScaleInCooldown" :: NullOrUndefined (Cooldown) , "DisableScaleIn" :: NullOrUndefined (DisableScaleIn) } -> {"TargetValue" :: (MetricScale) , "PredefinedMetricSpecification" :: NullOrUndefined (PredefinedMetricSpecification) , "CustomizedMetricSpecification" :: NullOrUndefined (CustomizedMetricSpecification) , "ScaleOutCooldown" :: NullOrUndefined (Cooldown) , "ScaleInCooldown" :: NullOrUndefined (Cooldown) , "DisableScaleIn" :: NullOrUndefined (DisableScaleIn) } ) -> TargetTrackingScalingPolicyConfiguration
newTargetTrackingScalingPolicyConfiguration' _TargetValue customize = (TargetTrackingScalingPolicyConfiguration <<< customize) { "TargetValue": _TargetValue, "CustomizedMetricSpecification": (NullOrUndefined Nothing), "DisableScaleIn": (NullOrUndefined Nothing), "PredefinedMetricSpecification": (NullOrUndefined Nothing), "ScaleInCooldown": (NullOrUndefined Nothing), "ScaleOutCooldown": (NullOrUndefined Nothing) }



newtype TimestampType = TimestampType Types.Timestamp
derive instance newtypeTimestampType :: Newtype TimestampType _
derive instance repGenericTimestampType :: Generic TimestampType _
instance showTimestampType :: Show TimestampType where show = genericShow
instance decodeTimestampType :: Decode TimestampType where decode = genericDecode options
instance encodeTimestampType :: Encode TimestampType where encode = genericEncode options



-- | <p>An exception was thrown for a validation issue. Review the available parameters for the API request.</p>
newtype ValidationException = ValidationException 
  { "Message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeValidationException :: Newtype ValidationException _
derive instance repGenericValidationException :: Generic ValidationException _
instance showValidationException :: Show ValidationException where show = genericShow
instance decodeValidationException :: Decode ValidationException where decode = genericDecode options
instance encodeValidationException :: Encode ValidationException where encode = genericEncode options

-- | Constructs ValidationException from required parameters
newValidationException :: ValidationException
newValidationException  = ValidationException { "Message": (NullOrUndefined Nothing) }

-- | Constructs ValidationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newValidationException' :: ( { "Message" :: NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined (ErrorMessage) } ) -> ValidationException
newValidationException'  customize = (ValidationException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype XmlString = XmlString String
derive instance newtypeXmlString :: Newtype XmlString _
derive instance repGenericXmlString :: Generic XmlString _
instance showXmlString :: Show XmlString where show = genericShow
instance decodeXmlString :: Decode XmlString where decode = genericDecode options
instance encodeXmlString :: Encode XmlString where encode = genericEncode options

