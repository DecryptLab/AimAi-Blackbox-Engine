.class public Ltop/niunaijun/blackbox/fake/service/IPhoneSubInfoProxy;
.super Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;
.source "IPhoneSubInfoProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/fake/service/IPhoneSubInfoProxy$GetProtectedSubscriptionIdentifier;,
        Ltop/niunaijun/blackbox/fake/service/IPhoneSubInfoProxy$getLine1NumberForSubscriber;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "IPhoneSubInfoProxy"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;-><init>()V

    .line 19
    invoke-static {}, Lblack/android/telephony/BRTelephonyManager;->get()Lblack/android/telephony/TelephonyManagerStatic;

    move-result-object p0

    invoke-interface {p0}, Lblack/android/telephony/TelephonyManagerStatic;->_check_sServiceHandleCacheEnabled()Ljava/lang/reflect/Field;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 20
    invoke-static {}, Lblack/android/telephony/BRTelephonyManager;->get()Lblack/android/telephony/TelephonyManagerStatic;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Lblack/android/telephony/TelephonyManagerStatic;->_set_sServiceHandleCacheEnabled(Ljava/lang/Object;)V

    .line 22
    :cond_19
    invoke-static {}, Lblack/android/telephony/BRTelephonyManager;->get()Lblack/android/telephony/TelephonyManagerStatic;

    move-result-object p0

    invoke-interface {p0}, Lblack/android/telephony/TelephonyManagerStatic;->_check_getSubscriberInfoService()Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_2a

    .line 23
    invoke-static {}, Lblack/android/telephony/BRTelephonyManager;->get()Lblack/android/telephony/TelephonyManagerStatic;

    move-result-object p0

    invoke-interface {p0}, Lblack/android/telephony/TelephonyManagerStatic;->getSubscriberInfoService()Ljava/lang/Object;

    :cond_2a
    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 1

    .line 29
    invoke-static {}, Lblack/android/telephony/BRTelephonyManager;->get()Lblack/android/telephony/TelephonyManagerStatic;

    move-result-object p0

    invoke-interface {p0}, Lblack/android/telephony/TelephonyManagerStatic;->sIPhoneSubInfo()Landroid/os/IInterface;

    move-result-object p0

    return-object p0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 34
    invoke-static {}, Lblack/android/telephony/BRTelephonyManager;->get()Lblack/android/telephony/TelephonyManagerStatic;

    move-result-object p0

    invoke-interface {p0, p2}, Lblack/android/telephony/TelephonyManagerStatic;->_set_sIPhoneSubInfo(Ljava/lang/Object;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 39
    invoke-static {p3}, Ltop/niunaijun/blackbox/utils/MethodParameterUtils;->replaceFirstAppPkg([Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    invoke-super {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public isBadEnv()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IPhoneSubInfoProxy.GetProtectedSubscriptionIdentifier (top.niunaijun.blackbox.fake.service.IPhoneSubInfoProxy$GetProtectedSubscriptionIdentifier)
