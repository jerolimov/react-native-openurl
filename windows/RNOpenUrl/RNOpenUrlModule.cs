using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Open.Url.RNOpenUrl
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNOpenUrlModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNOpenUrlModule"/>.
        /// </summary>
        internal RNOpenUrlModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNOpenUrl";
            }
        }
    }
}
