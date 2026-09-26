.class public final synthetic Ltop/niunaijun/blackbox/fake/delegate/VirtualServiceBinder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Landroid/os/IBinder;

.field public final synthetic f$1:Ltop/niunaijun/blackbox/fake/delegate/VirtualServiceBinder;


# direct methods
.method public synthetic constructor <init>(Landroid/os/IBinder;Ltop/niunaijun/blackbox/fake/delegate/VirtualServiceBinder;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltop/niunaijun/blackbox/fake/delegate/VirtualServiceBinder$$ExternalSyntheticLambda0;->f$0:Landroid/os/IBinder;

    iput-object p2, p0, Ltop/niunaijun/blackbox/fake/delegate/VirtualServiceBinder$$ExternalSyntheticLambda0;->f$1:Ltop/niunaijun/blackbox/fake/delegate/VirtualServiceBinder;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 2

    .line 0
    iget-object v0, p0, Ltop/niunaijun/blackbox/fake/delegate/VirtualServiceBinder$$ExternalSyntheticLambda0;->f$0:Landroid/os/IBinder;

    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/delegate/VirtualServiceBinder$$ExternalSyntheticLambda0;->f$1:Ltop/niunaijun/blackbox/fake/delegate/VirtualServiceBinder;

    invoke-static {v0, p0}, Ltop/niunaijun/blackbox/fake/delegate/VirtualServiceBinder;->lambda$wrap$0(Landroid/os/IBinder;Ltop/niunaijun/blackbox/fake/delegate/VirtualServiceBinder;)V

    return-void
.end method
