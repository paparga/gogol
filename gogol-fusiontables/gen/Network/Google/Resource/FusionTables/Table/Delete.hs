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
-- Module      : Network.Google.Resource.FusionTables.Table.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a table.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.table.delete@.
module Network.Google.Resource.FusionTables.Table.Delete
    (
    -- * REST Resource
      TableDeleteResource

    -- * Creating a Request
    , tableDelete'
    , TableDelete'

    -- * Request Lenses
    , tdTableId
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @fusiontables.table.delete@ method which the
-- 'TableDelete'' request conforms to.
type TableDeleteResource =
     "tables" :>
       Capture "tableId" Text :>
         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a table.
--
-- /See:/ 'tableDelete'' smart constructor.
newtype TableDelete' = TableDelete'
    { _tdTableId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdTableId'
tableDelete'
    :: Text -- ^ 'tdTableId'
    -> TableDelete'
tableDelete' pTdTableId_ =
    TableDelete'
    { _tdTableId = pTdTableId_
    }

-- | ID of the table to be deleted.
tdTableId :: Lens' TableDelete' Text
tdTableId
  = lens _tdTableId (\ s a -> s{_tdTableId = a})

instance GoogleRequest TableDelete' where
        type Rs TableDelete' = ()
        requestClient TableDelete'{..}
          = go _tdTableId (Just AltJSON) fusionTablesService
          where go
                  = buildClient (Proxy :: Proxy TableDeleteResource)
                      mempty
