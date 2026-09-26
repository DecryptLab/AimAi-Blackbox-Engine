.class public Ltop/niunaijun/blackbox/fake/service/IWifiManagerProxy$GetConnectionInfo;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IWifiManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IWifiManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetConnectionInfo"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "getConnectionInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 56
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiInfo;

    .line 57
    invoke-static {p0}, Lblack/android/net/wifi/BRWifiInfo;->get(Ljava/lang/Object;)Lblack/android/net/wifi/WifiInfoContext;

    move-result-object p1

    const-string p2, "ac:62:5a:82:65:c4"

    invoke-interface {p1, p2}, Lblack/android/net/wifi/WifiInfoContext;->_set_mBSSID(Ljava/lang/Object;)V

    .line 58
    invoke-static {p0}, Lblack/android/net/wifi/BRWifiInfo;->get(Ljava/lang/Object;)Lblack/android/net/wifi/WifiInfoContext;

    move-result-object p1

    invoke-interface {p1, p2}, Lblack/android/net/wifi/WifiInfoContext;->_set_mMacAddress(Ljava/lang/Object;)V

    .line 59
    invoke-static {p0}, Lblack/android/net/wifi/BRWifiInfo;->get(Ljava/lang/Object;)Lblack/android/net/wifi/WifiInfoContext;

    move-result-object p1

    invoke-static {}, Lblack/android/net/wifi/BRWifiSsid;->get()Lblack/android/net/wifi/WifiSsidStatic;

    move-result-object p2

    const-string p3, "BlackBox_Wifi"

    invoke-interface {p2, p3}, Lblack/android/net/wifi/WifiSsidStatic;->createFromAsciiEncoded(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lblack/android/net/wifi/WifiInfoContext;->_set_mWifiSsid(Ljava/lang/Object;)V

    return-object p0
.end method
