{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.AdvertiserGroups.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing advertiser group.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.advertiserGroups.delete@.
module Network.Google.Resource.DFAReporting.AdvertiserGroups.Delete
    (
    -- * REST Resource
      AdvertiserGroupsDeleteResource

    -- * Creating a Request
    , advertiserGroupsDelete'
    , AdvertiserGroupsDelete'

    -- * Request Lenses
    , agdProFileId
    , agdId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.advertiserGroups.delete@ method which the
-- 'AdvertiserGroupsDelete'' request conforms to.
type AdvertiserGroupsDeleteResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "advertiserGroups" :>
           Capture "id" Int64 :>
             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an existing advertiser group.
--
-- /See:/ 'advertiserGroupsDelete'' smart constructor.
data AdvertiserGroupsDelete' = AdvertiserGroupsDelete'
    { _agdProFileId :: !Int64
    , _agdId        :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertiserGroupsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agdProFileId'
--
-- * 'agdId'
advertiserGroupsDelete'
    :: Int64 -- ^ 'agdProFileId'
    -> Int64 -- ^ 'agdId'
    -> AdvertiserGroupsDelete'
advertiserGroupsDelete' pAgdProFileId_ pAgdId_ =
    AdvertiserGroupsDelete'
    { _agdProFileId = pAgdProFileId_
    , _agdId = pAgdId_
    }

-- | User profile ID associated with this request.
agdProFileId :: Lens' AdvertiserGroupsDelete' Int64
agdProFileId
  = lens _agdProFileId (\ s a -> s{_agdProFileId = a})

-- | Advertiser group ID.
agdId :: Lens' AdvertiserGroupsDelete' Int64
agdId = lens _agdId (\ s a -> s{_agdId = a})

instance GoogleRequest AdvertiserGroupsDelete' where
        type Rs AdvertiserGroupsDelete' = ()
        requestClient AdvertiserGroupsDelete'{..}
          = go _agdProFileId _agdId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AdvertiserGroupsDeleteResource)
                      mempty
