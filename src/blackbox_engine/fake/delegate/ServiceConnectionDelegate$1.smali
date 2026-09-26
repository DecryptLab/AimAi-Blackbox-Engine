.class Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$1;
.super Ljava/lang/Object;
.source "ServiceConnectionDelegate.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate;->createProxy(Landroid/app/IServiceConnection;Landroid/content/Intent;)Landroid/app/IServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$iBinder:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$1;->val$iBinder:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 53
    invoke-static {}, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate;->-$$Nest$sfgetsServiceConnectDelegate()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$1;->val$iBinder:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$1;->val$iBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method

###### Class top.niunaijun.blackbox.fake.delegate.ServiceConnectionDelegate.ConnectionLayout (top.niunaijun.blackbox.fake.delegate.ServiceConnectionDelegate$ConnectionLayout)
