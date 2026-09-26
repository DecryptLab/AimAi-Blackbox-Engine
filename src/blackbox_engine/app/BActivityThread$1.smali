.class Ltop/niunaijun/blackbox/app/BActivityThread$1;
.super Ljava/lang/Object;
.source "BActivityThread.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltop/niunaijun/blackbox/app/BActivityThread;->initProcess(Ltop/niunaijun/blackbox/entity/AppConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltop/niunaijun/blackbox/app/BActivityThread;

.field final synthetic val$iBinder:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Ltop/niunaijun/blackbox/app/BActivityThread;Landroid/os/IBinder;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 179
    iput-object p1, p0, Ltop/niunaijun/blackbox/app/BActivityThread$1;->this$0:Ltop/niunaijun/blackbox/app/BActivityThread;

    iput-object p2, p0, Ltop/niunaijun/blackbox/app/BActivityThread$1;->val$iBinder:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 182
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->-$$Nest$sfgetmConfigLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 184
    :try_start_5
    iget-object v1, p0, Ltop/niunaijun/blackbox/app/BActivityThread$1;->val$iBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_e
    .catchall {:try_start_5 .. :try_end_b} :catchall_c

    goto :goto_e

    :catchall_c
    move-exception p0

    goto :goto_16

    .line 187
    :catch_e
    :goto_e
    :try_start_e
    iget-object p0, p0, Ltop/niunaijun/blackbox/app/BActivityThread$1;->this$0:Ltop/niunaijun/blackbox/app/BActivityThread;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Ltop/niunaijun/blackbox/app/BActivityThread;->-$$Nest$fputmAppConfig(Ltop/niunaijun/blackbox/app/BActivityThread;Ltop/niunaijun/blackbox/entity/AppConfig;)V

    .line 188
    monitor-exit v0

    return-void

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_c

    throw p0
.end method

###### Class top.niunaijun.blackbox.app.BActivityThread.AppBindData (top.niunaijun.blackbox.app.BActivityThread$AppBindData)
