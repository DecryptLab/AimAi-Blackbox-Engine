.class public final synthetic Ltop/niunaijun/blackbox/app/BActivityThread$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Intent;

.field public final synthetic f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;Landroid/os/IBinder;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltop/niunaijun/blackbox/app/BActivityThread$$ExternalSyntheticLambda2;->f$0:Landroid/content/Intent;

    iput-object p2, p0, Ltop/niunaijun/blackbox/app/BActivityThread$$ExternalSyntheticLambda2;->f$1:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Ltop/niunaijun/blackbox/app/BActivityThread$$ExternalSyntheticLambda2;->f$0:Landroid/content/Intent;

    iget-object p0, p0, Ltop/niunaijun/blackbox/app/BActivityThread$$ExternalSyntheticLambda2;->f$1:Landroid/os/IBinder;

    invoke-static {v0, p0}, Ltop/niunaijun/blackbox/app/BActivityThread;->lambda$handleNewIntent$2(Landroid/content/Intent;Landroid/os/IBinder;)V

    return-void
.end method

###### Class top.niunaijun.blackbox.app.BActivityThread$$ExternalSyntheticLambda3 (top.niunaijun.blackbox.app.BActivityThread$$ExternalSyntheticLambda3)
