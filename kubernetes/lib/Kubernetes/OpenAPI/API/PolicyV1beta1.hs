{-
   Kubernetes

   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: 2.0
   Kubernetes API version: v1.9.12
   Generated by Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
-}

{-|
Module : Kubernetes.OpenAPI.API.PolicyV1beta1
-}

{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MonoLocalBinds #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Kubernetes.OpenAPI.API.PolicyV1beta1 where

import Kubernetes.OpenAPI.Core
import Kubernetes.OpenAPI.MimeTypes
import Kubernetes.OpenAPI.Model as M

import qualified Data.Aeson as A
import qualified Data.ByteString as B
import qualified Data.ByteString.Lazy as BL
import qualified Data.Data as P (Typeable, TypeRep, typeOf, typeRep)
import qualified Data.Foldable as P
import qualified Data.Map as Map
import qualified Data.Maybe as P
import qualified Data.Proxy as P (Proxy(..))
import qualified Data.Set as Set
import qualified Data.String as P
import qualified Data.Text as T
import qualified Data.Text.Encoding as T
import qualified Data.Text.Lazy as TL
import qualified Data.Text.Lazy.Encoding as TL
import qualified Data.Time as TI
import qualified Network.HTTP.Client.MultipartFormData as NH
import qualified Network.HTTP.Media as ME
import qualified Network.HTTP.Types as NH
import qualified Web.FormUrlEncoded as WH
import qualified Web.HttpApiData as WH

import Data.Text (Text)
import GHC.Base ((<|>))

import Prelude ((==),(/=),($), (.),(<$>),(<*>),(>>=),Maybe(..),Bool(..),Char,Double,FilePath,Float,Int,Integer,String,fmap,undefined,mempty,maybe,pure,Monad,Applicative,Functor)
import qualified Prelude as P

-- * Operations


-- ** PolicyV1beta1

-- *** createNamespacedPodDisruptionBudget

-- | @POST \/apis\/policy\/v1beta1\/namespaces\/{namespace}\/poddisruptionbudgets@
-- 
-- create a PodDisruptionBudget
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
createNamespacedPodDisruptionBudget 
  :: (Consumes CreateNamespacedPodDisruptionBudget contentType, MimeRender contentType V1beta1PodDisruptionBudget)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> Namespace -- ^ "namespace" -  object name and auth scope, such as for teams and projects
  -> V1beta1PodDisruptionBudget -- ^ "body"
  -> KubernetesRequest CreateNamespacedPodDisruptionBudget contentType V1beta1PodDisruptionBudget accept
createNamespacedPodDisruptionBudget _  _ (Namespace namespace) body =
  _mkRequest "POST" ["/apis/policy/v1beta1/namespaces/",toPath namespace,"/poddisruptionbudgets"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)
    `setBodyParam` body

data CreateNamespacedPodDisruptionBudget 
instance HasBodyParam CreateNamespacedPodDisruptionBudget V1beta1PodDisruptionBudget 

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam CreateNamespacedPodDisruptionBudget Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | @*/*@
instance MimeType mtype => Consumes CreateNamespacedPodDisruptionBudget mtype

-- | @application/json@
instance Produces CreateNamespacedPodDisruptionBudget MimeJSON
-- | @application/yaml@
instance Produces CreateNamespacedPodDisruptionBudget MimeYaml
-- | @application/vnd.kubernetes.protobuf@
instance Produces CreateNamespacedPodDisruptionBudget MimeVndKubernetesProtobuf


-- *** deleteCollectionNamespacedPodDisruptionBudget

-- | @DELETE \/apis\/policy\/v1beta1\/namespaces\/{namespace}\/poddisruptionbudgets@
-- 
-- delete collection of PodDisruptionBudget
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
deleteCollectionNamespacedPodDisruptionBudget 
  :: Accept accept -- ^ request accept ('MimeType')
  -> Namespace -- ^ "namespace" -  object name and auth scope, such as for teams and projects
  -> KubernetesRequest DeleteCollectionNamespacedPodDisruptionBudget MimeNoContent V1Status accept
deleteCollectionNamespacedPodDisruptionBudget  _ (Namespace namespace) =
  _mkRequest "DELETE" ["/apis/policy/v1beta1/namespaces/",toPath namespace,"/poddisruptionbudgets"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data DeleteCollectionNamespacedPodDisruptionBudget  

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam DeleteCollectionNamespacedPodDisruptionBudget Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "continue" - The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server the server will respond with a 410 ResourceExpired error indicating the client must restart their list without the continue field. This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
instance HasOptionalParam DeleteCollectionNamespacedPodDisruptionBudget Continue where
  applyOptionalParam req (Continue xs) =
    req `setQuery` toQuery ("continue", Just xs)

-- | /Optional Param/ "fieldSelector" - A selector to restrict the list of returned objects by their fields. Defaults to everything.
instance HasOptionalParam DeleteCollectionNamespacedPodDisruptionBudget FieldSelector where
  applyOptionalParam req (FieldSelector xs) =
    req `setQuery` toQuery ("fieldSelector", Just xs)

-- | /Optional Param/ "includeUninitialized" - If true, partially initialized resources are included in the response.
instance HasOptionalParam DeleteCollectionNamespacedPodDisruptionBudget IncludeUninitialized where
  applyOptionalParam req (IncludeUninitialized xs) =
    req `setQuery` toQuery ("includeUninitialized", Just xs)

-- | /Optional Param/ "labelSelector" - A selector to restrict the list of returned objects by their labels. Defaults to everything.
instance HasOptionalParam DeleteCollectionNamespacedPodDisruptionBudget LabelSelector where
  applyOptionalParam req (LabelSelector xs) =
    req `setQuery` toQuery ("labelSelector", Just xs)

-- | /Optional Param/ "limit" - limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
instance HasOptionalParam DeleteCollectionNamespacedPodDisruptionBudget Limit where
  applyOptionalParam req (Limit xs) =
    req `setQuery` toQuery ("limit", Just xs)

-- | /Optional Param/ "resourceVersion" - When specified with a watch call, shows changes that occur after that particular version of a resource. Defaults to changes from the beginning of history. When specified for list: - if unset, then the result is returned from remote storage based on quorum-read flag; - if it's 0, then we simply return what we currently have in cache, no guarantee; - if set to non zero, then the result is at least as fresh as given rv.
instance HasOptionalParam DeleteCollectionNamespacedPodDisruptionBudget ResourceVersion where
  applyOptionalParam req (ResourceVersion xs) =
    req `setQuery` toQuery ("resourceVersion", Just xs)

-- | /Optional Param/ "timeoutSeconds" - Timeout for the list/watch call.
instance HasOptionalParam DeleteCollectionNamespacedPodDisruptionBudget TimeoutSeconds where
  applyOptionalParam req (TimeoutSeconds xs) =
    req `setQuery` toQuery ("timeoutSeconds", Just xs)

-- | /Optional Param/ "watch" - Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion.
instance HasOptionalParam DeleteCollectionNamespacedPodDisruptionBudget Watch where
  applyOptionalParam req (Watch xs) =
    req `setQuery` toQuery ("watch", Just xs)

-- | @*/*@
instance MimeType mtype => Consumes DeleteCollectionNamespacedPodDisruptionBudget mtype

-- | @application/json@
instance Produces DeleteCollectionNamespacedPodDisruptionBudget MimeJSON
-- | @application/yaml@
instance Produces DeleteCollectionNamespacedPodDisruptionBudget MimeYaml
-- | @application/vnd.kubernetes.protobuf@
instance Produces DeleteCollectionNamespacedPodDisruptionBudget MimeVndKubernetesProtobuf


-- *** deleteNamespacedPodDisruptionBudget

-- | @DELETE \/apis\/policy\/v1beta1\/namespaces\/{namespace}\/poddisruptionbudgets\/{name}@
-- 
-- delete a PodDisruptionBudget
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
deleteNamespacedPodDisruptionBudget 
  :: (Consumes DeleteNamespacedPodDisruptionBudget contentType, MimeRender contentType V1DeleteOptions)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> Name -- ^ "name" -  name of the PodDisruptionBudget
  -> Namespace -- ^ "namespace" -  object name and auth scope, such as for teams and projects
  -> V1DeleteOptions -- ^ "body"
  -> KubernetesRequest DeleteNamespacedPodDisruptionBudget contentType V1Status accept
deleteNamespacedPodDisruptionBudget _  _ (Name name) (Namespace namespace) body =
  _mkRequest "DELETE" ["/apis/policy/v1beta1/namespaces/",toPath namespace,"/poddisruptionbudgets/",toPath name]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)
    `setBodyParam` body

data DeleteNamespacedPodDisruptionBudget 
instance HasBodyParam DeleteNamespacedPodDisruptionBudget V1DeleteOptions 

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam DeleteNamespacedPodDisruptionBudget Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "gracePeriodSeconds" - The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately.
instance HasOptionalParam DeleteNamespacedPodDisruptionBudget GracePeriodSeconds where
  applyOptionalParam req (GracePeriodSeconds xs) =
    req `setQuery` toQuery ("gracePeriodSeconds", Just xs)

-- | /Optional Param/ "orphanDependents" - Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.
instance HasOptionalParam DeleteNamespacedPodDisruptionBudget OrphanDependents where
  applyOptionalParam req (OrphanDependents xs) =
    req `setQuery` toQuery ("orphanDependents", Just xs)

-- | /Optional Param/ "propagationPolicy" - Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground.
instance HasOptionalParam DeleteNamespacedPodDisruptionBudget PropagationPolicy where
  applyOptionalParam req (PropagationPolicy xs) =
    req `setQuery` toQuery ("propagationPolicy", Just xs)

-- | @*/*@
instance MimeType mtype => Consumes DeleteNamespacedPodDisruptionBudget mtype

-- | @application/json@
instance Produces DeleteNamespacedPodDisruptionBudget MimeJSON
-- | @application/yaml@
instance Produces DeleteNamespacedPodDisruptionBudget MimeYaml
-- | @application/vnd.kubernetes.protobuf@
instance Produces DeleteNamespacedPodDisruptionBudget MimeVndKubernetesProtobuf


-- *** getAPIResources

-- | @GET \/apis\/policy\/v1beta1\/@
-- 
-- get available resources
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
getAPIResources 
  :: Accept accept -- ^ request accept ('MimeType')
  -> KubernetesRequest GetAPIResources MimeNoContent V1APIResourceList accept
getAPIResources  _ =
  _mkRequest "GET" ["/apis/policy/v1beta1/"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data GetAPIResources  

-- | @application/json@
instance Consumes GetAPIResources MimeJSON
-- | @application/yaml@
instance Consumes GetAPIResources MimeYaml
-- | @application/vnd.kubernetes.protobuf@
instance Consumes GetAPIResources MimeVndKubernetesProtobuf

-- | @application/json@
instance Produces GetAPIResources MimeJSON
-- | @application/yaml@
instance Produces GetAPIResources MimeYaml
-- | @application/vnd.kubernetes.protobuf@
instance Produces GetAPIResources MimeVndKubernetesProtobuf


-- *** listNamespacedPodDisruptionBudget

-- | @GET \/apis\/policy\/v1beta1\/namespaces\/{namespace}\/poddisruptionbudgets@
-- 
-- list or watch objects of kind PodDisruptionBudget
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
listNamespacedPodDisruptionBudget 
  :: Accept accept -- ^ request accept ('MimeType')
  -> Namespace -- ^ "namespace" -  object name and auth scope, such as for teams and projects
  -> KubernetesRequest ListNamespacedPodDisruptionBudget MimeNoContent V1beta1PodDisruptionBudgetList accept
listNamespacedPodDisruptionBudget  _ (Namespace namespace) =
  _mkRequest "GET" ["/apis/policy/v1beta1/namespaces/",toPath namespace,"/poddisruptionbudgets"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data ListNamespacedPodDisruptionBudget  

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam ListNamespacedPodDisruptionBudget Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "continue" - The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server the server will respond with a 410 ResourceExpired error indicating the client must restart their list without the continue field. This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
instance HasOptionalParam ListNamespacedPodDisruptionBudget Continue where
  applyOptionalParam req (Continue xs) =
    req `setQuery` toQuery ("continue", Just xs)

-- | /Optional Param/ "fieldSelector" - A selector to restrict the list of returned objects by their fields. Defaults to everything.
instance HasOptionalParam ListNamespacedPodDisruptionBudget FieldSelector where
  applyOptionalParam req (FieldSelector xs) =
    req `setQuery` toQuery ("fieldSelector", Just xs)

-- | /Optional Param/ "includeUninitialized" - If true, partially initialized resources are included in the response.
instance HasOptionalParam ListNamespacedPodDisruptionBudget IncludeUninitialized where
  applyOptionalParam req (IncludeUninitialized xs) =
    req `setQuery` toQuery ("includeUninitialized", Just xs)

-- | /Optional Param/ "labelSelector" - A selector to restrict the list of returned objects by their labels. Defaults to everything.
instance HasOptionalParam ListNamespacedPodDisruptionBudget LabelSelector where
  applyOptionalParam req (LabelSelector xs) =
    req `setQuery` toQuery ("labelSelector", Just xs)

-- | /Optional Param/ "limit" - limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
instance HasOptionalParam ListNamespacedPodDisruptionBudget Limit where
  applyOptionalParam req (Limit xs) =
    req `setQuery` toQuery ("limit", Just xs)

-- | /Optional Param/ "resourceVersion" - When specified with a watch call, shows changes that occur after that particular version of a resource. Defaults to changes from the beginning of history. When specified for list: - if unset, then the result is returned from remote storage based on quorum-read flag; - if it's 0, then we simply return what we currently have in cache, no guarantee; - if set to non zero, then the result is at least as fresh as given rv.
instance HasOptionalParam ListNamespacedPodDisruptionBudget ResourceVersion where
  applyOptionalParam req (ResourceVersion xs) =
    req `setQuery` toQuery ("resourceVersion", Just xs)

-- | /Optional Param/ "timeoutSeconds" - Timeout for the list/watch call.
instance HasOptionalParam ListNamespacedPodDisruptionBudget TimeoutSeconds where
  applyOptionalParam req (TimeoutSeconds xs) =
    req `setQuery` toQuery ("timeoutSeconds", Just xs)

-- | /Optional Param/ "watch" - Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion.
instance HasOptionalParam ListNamespacedPodDisruptionBudget Watch where
  applyOptionalParam req (Watch xs) =
    req `setQuery` toQuery ("watch", Just xs)

-- | @*/*@
instance MimeType mtype => Consumes ListNamespacedPodDisruptionBudget mtype

-- | @application/json@
instance Produces ListNamespacedPodDisruptionBudget MimeJSON
-- | @application/yaml@
instance Produces ListNamespacedPodDisruptionBudget MimeYaml
-- | @application/vnd.kubernetes.protobuf@
instance Produces ListNamespacedPodDisruptionBudget MimeVndKubernetesProtobuf
-- | @application/json;stream=watch@
instance Produces ListNamespacedPodDisruptionBudget MimeJsonstreamwatch
-- | @application/vnd.kubernetes.protobuf;stream=watch@
instance Produces ListNamespacedPodDisruptionBudget MimeVndKubernetesProtobufstreamwatch


-- *** listPodDisruptionBudgetForAllNamespaces

-- | @GET \/apis\/policy\/v1beta1\/poddisruptionbudgets@
-- 
-- list or watch objects of kind PodDisruptionBudget
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
listPodDisruptionBudgetForAllNamespaces 
  :: Accept accept -- ^ request accept ('MimeType')
  -> KubernetesRequest ListPodDisruptionBudgetForAllNamespaces MimeNoContent V1beta1PodDisruptionBudgetList accept
listPodDisruptionBudgetForAllNamespaces  _ =
  _mkRequest "GET" ["/apis/policy/v1beta1/poddisruptionbudgets"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data ListPodDisruptionBudgetForAllNamespaces  

-- | /Optional Param/ "continue" - The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server the server will respond with a 410 ResourceExpired error indicating the client must restart their list without the continue field. This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
instance HasOptionalParam ListPodDisruptionBudgetForAllNamespaces Continue where
  applyOptionalParam req (Continue xs) =
    req `setQuery` toQuery ("continue", Just xs)

-- | /Optional Param/ "fieldSelector" - A selector to restrict the list of returned objects by their fields. Defaults to everything.
instance HasOptionalParam ListPodDisruptionBudgetForAllNamespaces FieldSelector where
  applyOptionalParam req (FieldSelector xs) =
    req `setQuery` toQuery ("fieldSelector", Just xs)

-- | /Optional Param/ "includeUninitialized" - If true, partially initialized resources are included in the response.
instance HasOptionalParam ListPodDisruptionBudgetForAllNamespaces IncludeUninitialized where
  applyOptionalParam req (IncludeUninitialized xs) =
    req `setQuery` toQuery ("includeUninitialized", Just xs)

-- | /Optional Param/ "labelSelector" - A selector to restrict the list of returned objects by their labels. Defaults to everything.
instance HasOptionalParam ListPodDisruptionBudgetForAllNamespaces LabelSelector where
  applyOptionalParam req (LabelSelector xs) =
    req `setQuery` toQuery ("labelSelector", Just xs)

-- | /Optional Param/ "limit" - limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
instance HasOptionalParam ListPodDisruptionBudgetForAllNamespaces Limit where
  applyOptionalParam req (Limit xs) =
    req `setQuery` toQuery ("limit", Just xs)

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam ListPodDisruptionBudgetForAllNamespaces Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "resourceVersion" - When specified with a watch call, shows changes that occur after that particular version of a resource. Defaults to changes from the beginning of history. When specified for list: - if unset, then the result is returned from remote storage based on quorum-read flag; - if it's 0, then we simply return what we currently have in cache, no guarantee; - if set to non zero, then the result is at least as fresh as given rv.
instance HasOptionalParam ListPodDisruptionBudgetForAllNamespaces ResourceVersion where
  applyOptionalParam req (ResourceVersion xs) =
    req `setQuery` toQuery ("resourceVersion", Just xs)

-- | /Optional Param/ "timeoutSeconds" - Timeout for the list/watch call.
instance HasOptionalParam ListPodDisruptionBudgetForAllNamespaces TimeoutSeconds where
  applyOptionalParam req (TimeoutSeconds xs) =
    req `setQuery` toQuery ("timeoutSeconds", Just xs)

-- | /Optional Param/ "watch" - Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion.
instance HasOptionalParam ListPodDisruptionBudgetForAllNamespaces Watch where
  applyOptionalParam req (Watch xs) =
    req `setQuery` toQuery ("watch", Just xs)

-- | @*/*@
instance MimeType mtype => Consumes ListPodDisruptionBudgetForAllNamespaces mtype

-- | @application/json@
instance Produces ListPodDisruptionBudgetForAllNamespaces MimeJSON
-- | @application/yaml@
instance Produces ListPodDisruptionBudgetForAllNamespaces MimeYaml
-- | @application/vnd.kubernetes.protobuf@
instance Produces ListPodDisruptionBudgetForAllNamespaces MimeVndKubernetesProtobuf
-- | @application/json;stream=watch@
instance Produces ListPodDisruptionBudgetForAllNamespaces MimeJsonstreamwatch
-- | @application/vnd.kubernetes.protobuf;stream=watch@
instance Produces ListPodDisruptionBudgetForAllNamespaces MimeVndKubernetesProtobufstreamwatch


-- *** patchNamespacedPodDisruptionBudget

-- | @PATCH \/apis\/policy\/v1beta1\/namespaces\/{namespace}\/poddisruptionbudgets\/{name}@
-- 
-- partially update the specified PodDisruptionBudget
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
patchNamespacedPodDisruptionBudget 
  :: (Consumes PatchNamespacedPodDisruptionBudget contentType, MimeRender contentType A.Value)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> Name -- ^ "name" -  name of the PodDisruptionBudget
  -> Namespace -- ^ "namespace" -  object name and auth scope, such as for teams and projects
  -> A.Value -- ^ "body"
  -> KubernetesRequest PatchNamespacedPodDisruptionBudget contentType V1beta1PodDisruptionBudget accept
patchNamespacedPodDisruptionBudget _  _ (Name name) (Namespace namespace) body =
  _mkRequest "PATCH" ["/apis/policy/v1beta1/namespaces/",toPath namespace,"/poddisruptionbudgets/",toPath name]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)
    `setBodyParam` body

data PatchNamespacedPodDisruptionBudget 
instance HasBodyParam PatchNamespacedPodDisruptionBudget A.Value 

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam PatchNamespacedPodDisruptionBudget Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | @application/json-patch+json@
instance Consumes PatchNamespacedPodDisruptionBudget MimeJsonPatchjson
-- | @application/merge-patch+json@
instance Consumes PatchNamespacedPodDisruptionBudget MimeMergePatchjson
-- | @application/strategic-merge-patch+json@
instance Consumes PatchNamespacedPodDisruptionBudget MimeStrategicMergePatchjson

-- | @application/json@
instance Produces PatchNamespacedPodDisruptionBudget MimeJSON
-- | @application/yaml@
instance Produces PatchNamespacedPodDisruptionBudget MimeYaml
-- | @application/vnd.kubernetes.protobuf@
instance Produces PatchNamespacedPodDisruptionBudget MimeVndKubernetesProtobuf


-- *** patchNamespacedPodDisruptionBudgetStatus

-- | @PATCH \/apis\/policy\/v1beta1\/namespaces\/{namespace}\/poddisruptionbudgets\/{name}\/status@
-- 
-- partially update status of the specified PodDisruptionBudget
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
patchNamespacedPodDisruptionBudgetStatus 
  :: (Consumes PatchNamespacedPodDisruptionBudgetStatus contentType, MimeRender contentType A.Value)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> Name -- ^ "name" -  name of the PodDisruptionBudget
  -> Namespace -- ^ "namespace" -  object name and auth scope, such as for teams and projects
  -> A.Value -- ^ "body"
  -> KubernetesRequest PatchNamespacedPodDisruptionBudgetStatus contentType V1beta1PodDisruptionBudget accept
patchNamespacedPodDisruptionBudgetStatus _  _ (Name name) (Namespace namespace) body =
  _mkRequest "PATCH" ["/apis/policy/v1beta1/namespaces/",toPath namespace,"/poddisruptionbudgets/",toPath name,"/status"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)
    `setBodyParam` body

data PatchNamespacedPodDisruptionBudgetStatus 
instance HasBodyParam PatchNamespacedPodDisruptionBudgetStatus A.Value 

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam PatchNamespacedPodDisruptionBudgetStatus Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | @application/json-patch+json@
instance Consumes PatchNamespacedPodDisruptionBudgetStatus MimeJsonPatchjson
-- | @application/merge-patch+json@
instance Consumes PatchNamespacedPodDisruptionBudgetStatus MimeMergePatchjson
-- | @application/strategic-merge-patch+json@
instance Consumes PatchNamespacedPodDisruptionBudgetStatus MimeStrategicMergePatchjson

-- | @application/json@
instance Produces PatchNamespacedPodDisruptionBudgetStatus MimeJSON
-- | @application/yaml@
instance Produces PatchNamespacedPodDisruptionBudgetStatus MimeYaml
-- | @application/vnd.kubernetes.protobuf@
instance Produces PatchNamespacedPodDisruptionBudgetStatus MimeVndKubernetesProtobuf


-- *** readNamespacedPodDisruptionBudget

-- | @GET \/apis\/policy\/v1beta1\/namespaces\/{namespace}\/poddisruptionbudgets\/{name}@
-- 
-- read the specified PodDisruptionBudget
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
readNamespacedPodDisruptionBudget 
  :: Accept accept -- ^ request accept ('MimeType')
  -> Name -- ^ "name" -  name of the PodDisruptionBudget
  -> Namespace -- ^ "namespace" -  object name and auth scope, such as for teams and projects
  -> KubernetesRequest ReadNamespacedPodDisruptionBudget MimeNoContent V1beta1PodDisruptionBudget accept
readNamespacedPodDisruptionBudget  _ (Name name) (Namespace namespace) =
  _mkRequest "GET" ["/apis/policy/v1beta1/namespaces/",toPath namespace,"/poddisruptionbudgets/",toPath name]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data ReadNamespacedPodDisruptionBudget  

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam ReadNamespacedPodDisruptionBudget Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "exact" - Should the export be exact.  Exact export maintains cluster-specific fields like 'Namespace'.
instance HasOptionalParam ReadNamespacedPodDisruptionBudget Exact where
  applyOptionalParam req (Exact xs) =
    req `setQuery` toQuery ("exact", Just xs)

-- | /Optional Param/ "export" - Should this value be exported.  Export strips fields that a user can not specify.
instance HasOptionalParam ReadNamespacedPodDisruptionBudget Export where
  applyOptionalParam req (Export xs) =
    req `setQuery` toQuery ("export", Just xs)

-- | @*/*@
instance MimeType mtype => Consumes ReadNamespacedPodDisruptionBudget mtype

-- | @application/json@
instance Produces ReadNamespacedPodDisruptionBudget MimeJSON
-- | @application/yaml@
instance Produces ReadNamespacedPodDisruptionBudget MimeYaml
-- | @application/vnd.kubernetes.protobuf@
instance Produces ReadNamespacedPodDisruptionBudget MimeVndKubernetesProtobuf


-- *** readNamespacedPodDisruptionBudgetStatus

-- | @GET \/apis\/policy\/v1beta1\/namespaces\/{namespace}\/poddisruptionbudgets\/{name}\/status@
-- 
-- read status of the specified PodDisruptionBudget
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
readNamespacedPodDisruptionBudgetStatus 
  :: Accept accept -- ^ request accept ('MimeType')
  -> Name -- ^ "name" -  name of the PodDisruptionBudget
  -> Namespace -- ^ "namespace" -  object name and auth scope, such as for teams and projects
  -> KubernetesRequest ReadNamespacedPodDisruptionBudgetStatus MimeNoContent V1beta1PodDisruptionBudget accept
readNamespacedPodDisruptionBudgetStatus  _ (Name name) (Namespace namespace) =
  _mkRequest "GET" ["/apis/policy/v1beta1/namespaces/",toPath namespace,"/poddisruptionbudgets/",toPath name,"/status"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data ReadNamespacedPodDisruptionBudgetStatus  

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam ReadNamespacedPodDisruptionBudgetStatus Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | @*/*@
instance MimeType mtype => Consumes ReadNamespacedPodDisruptionBudgetStatus mtype

-- | @application/json@
instance Produces ReadNamespacedPodDisruptionBudgetStatus MimeJSON
-- | @application/yaml@
instance Produces ReadNamespacedPodDisruptionBudgetStatus MimeYaml
-- | @application/vnd.kubernetes.protobuf@
instance Produces ReadNamespacedPodDisruptionBudgetStatus MimeVndKubernetesProtobuf


-- *** replaceNamespacedPodDisruptionBudget

-- | @PUT \/apis\/policy\/v1beta1\/namespaces\/{namespace}\/poddisruptionbudgets\/{name}@
-- 
-- replace the specified PodDisruptionBudget
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
replaceNamespacedPodDisruptionBudget 
  :: (Consumes ReplaceNamespacedPodDisruptionBudget contentType, MimeRender contentType V1beta1PodDisruptionBudget)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> Name -- ^ "name" -  name of the PodDisruptionBudget
  -> Namespace -- ^ "namespace" -  object name and auth scope, such as for teams and projects
  -> V1beta1PodDisruptionBudget -- ^ "body"
  -> KubernetesRequest ReplaceNamespacedPodDisruptionBudget contentType V1beta1PodDisruptionBudget accept
replaceNamespacedPodDisruptionBudget _  _ (Name name) (Namespace namespace) body =
  _mkRequest "PUT" ["/apis/policy/v1beta1/namespaces/",toPath namespace,"/poddisruptionbudgets/",toPath name]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)
    `setBodyParam` body

data ReplaceNamespacedPodDisruptionBudget 
instance HasBodyParam ReplaceNamespacedPodDisruptionBudget V1beta1PodDisruptionBudget 

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam ReplaceNamespacedPodDisruptionBudget Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | @*/*@
instance MimeType mtype => Consumes ReplaceNamespacedPodDisruptionBudget mtype

-- | @application/json@
instance Produces ReplaceNamespacedPodDisruptionBudget MimeJSON
-- | @application/yaml@
instance Produces ReplaceNamespacedPodDisruptionBudget MimeYaml
-- | @application/vnd.kubernetes.protobuf@
instance Produces ReplaceNamespacedPodDisruptionBudget MimeVndKubernetesProtobuf


-- *** replaceNamespacedPodDisruptionBudgetStatus

-- | @PUT \/apis\/policy\/v1beta1\/namespaces\/{namespace}\/poddisruptionbudgets\/{name}\/status@
-- 
-- replace status of the specified PodDisruptionBudget
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
replaceNamespacedPodDisruptionBudgetStatus 
  :: (Consumes ReplaceNamespacedPodDisruptionBudgetStatus contentType, MimeRender contentType V1beta1PodDisruptionBudget)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> Name -- ^ "name" -  name of the PodDisruptionBudget
  -> Namespace -- ^ "namespace" -  object name and auth scope, such as for teams and projects
  -> V1beta1PodDisruptionBudget -- ^ "body"
  -> KubernetesRequest ReplaceNamespacedPodDisruptionBudgetStatus contentType V1beta1PodDisruptionBudget accept
replaceNamespacedPodDisruptionBudgetStatus _  _ (Name name) (Namespace namespace) body =
  _mkRequest "PUT" ["/apis/policy/v1beta1/namespaces/",toPath namespace,"/poddisruptionbudgets/",toPath name,"/status"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)
    `setBodyParam` body

data ReplaceNamespacedPodDisruptionBudgetStatus 
instance HasBodyParam ReplaceNamespacedPodDisruptionBudgetStatus V1beta1PodDisruptionBudget 

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam ReplaceNamespacedPodDisruptionBudgetStatus Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | @*/*@
instance MimeType mtype => Consumes ReplaceNamespacedPodDisruptionBudgetStatus mtype

-- | @application/json@
instance Produces ReplaceNamespacedPodDisruptionBudgetStatus MimeJSON
-- | @application/yaml@
instance Produces ReplaceNamespacedPodDisruptionBudgetStatus MimeYaml
-- | @application/vnd.kubernetes.protobuf@
instance Produces ReplaceNamespacedPodDisruptionBudgetStatus MimeVndKubernetesProtobuf
