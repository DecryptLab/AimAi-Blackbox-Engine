.class Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "BPackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;


# direct methods
.method constructor <init>(Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 83
    iput-object p1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService$1;->this$0:Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_23

    .line 88
    const-string p2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1a

    const-string p2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 89
    :cond_1a
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService$1;->this$0:Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    invoke-static {p0}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->-$$Nest$fgetmSettings(Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;)Ltop/niunaijun/blackbox/core/system/pm/Settings;

    move-result-object p0

    invoke-virtual {p0}, Ltop/niunaijun/blackbox/core/system/pm/Settings;->scanPackage()V

    :cond_23
    return-void
.end method
