.class Ltop/niunaijun/blackbox/fake/service/IShortcutManagerProxy$1;
.super Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;
.source "IShortcutManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltop/niunaijun/blackbox/fake/service/IShortcutManagerProxy;->onBindMethod()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltop/niunaijun/blackbox/fake/service/IShortcutManagerProxy;


# direct methods
.method constructor <init>(Ltop/niunaijun/blackbox/fake/service/IShortcutManagerProxy;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 60
    iput-object p1, p0, Ltop/niunaijun/blackbox/fake/service/IShortcutManagerProxy$1;->this$0:Ltop/niunaijun/blackbox/fake/service/IShortcutManagerProxy;

    invoke-direct {p0, p2}, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

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

    .line 63
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Ltop/niunaijun/blackbox/utils/compat/ParceledListSliceCompat;->create(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IShortcutManagerProxy.AddDynamicShortcuts (top.niunaijun.blackbox.fake.service.IShortcutManagerProxy$AddDynamicShortcuts)
