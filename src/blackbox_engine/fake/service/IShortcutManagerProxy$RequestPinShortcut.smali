.class public Ltop/niunaijun/blackbox/fake/service/IShortcutManagerProxy$RequestPinShortcut;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IShortcutManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IShortcutManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestPinShortcut"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "requestPinShortcut"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 69
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

    .line 72
    invoke-static {}, Ltop/niunaijun/blackbox/fake/service/IShortcutManagerProxy;->-$$Nest$sfgetPIN_SHORTCUT_SUPPORTED()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p3, p0, p1}, Ltop/niunaijun/blackbox/fake/service/IShortcutManagerProxy;->-$$Nest$smdeliverResult(Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IShortcutManagerProxy.SetDynamicShortcuts (top.niunaijun.blackbox.fake.service.IShortcutManagerProxy$SetDynamicShortcuts)
