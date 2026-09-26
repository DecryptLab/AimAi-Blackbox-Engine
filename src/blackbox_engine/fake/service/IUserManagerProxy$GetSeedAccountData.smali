.class public Ltop/niunaijun/blackbox/fake/service/IUserManagerProxy$GetSeedAccountData;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IUserManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IUserManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetSeedAccountData"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethods;
    value = {
        "getSeedAccountName",
        "getSeedAccountType",
        "getSeedAccountOptions"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 93
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

    const/4 p0, 0x0

    return-object p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IUserManagerProxy.GetUserInfo (top.niunaijun.blackbox.fake.service.IUserManagerProxy$GetUserInfo)
