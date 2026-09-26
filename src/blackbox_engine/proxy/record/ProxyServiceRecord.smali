.class public Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;
.super Ljava/lang/Object;
.source "ProxyServiceRecord.java"


# instance fields
.field public mServiceInfo:Landroid/content/pm/ServiceInfo;

.field public mServiceIntent:Landroid/content/Intent;

.field public mStartId:I

.field public mToken:Landroid/os/IBinder;

.field public mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/IBinder;II)V
    .registers 6

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;->mServiceIntent:Landroid/content/Intent;

    .line 26
    iput-object p2, p0, Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 27
    iput p4, p0, Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;->mUserId:I

    .line 28
    iput p5, p0, Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;->mStartId:I

    .line 29
    iput-object p3, p0, Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;->mToken:Landroid/os/IBinder;

    return-void
.end method

.method public static create(Landroid/content/Intent;)Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;
    .registers 8

    .line 41
    const-string v0, "_B_|_target_"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Intent;

    .line 42
    const-string v0, "_B_|_service_info_"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/pm/ServiceInfo;

    .line 43
    const-string v0, "_B_|_user_id_"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 44
    const-string v0, "_B_|_start_id_"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 45
    const-string v0, "_B_|_token_"

    invoke-static {p0, v0}, Ltop/niunaijun/blackbox/utils/compat/BundleCompat;->getBinder(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 46
    new-instance v1, Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;

    invoke-direct/range {v1 .. v6}, Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;-><init>(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/IBinder;II)V

    return-object v1
.end method

.method public static saveStub(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/IBinder;II)V
    .registers 7

    .line 33
    const-string v0, "_B_|_target_"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 34
    const-string p1, "_B_|_service_info_"

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 35
    const-string p1, "_B_|_user_id_"

    invoke-virtual {p0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    const-string p1, "_B_|_start_id_"

    invoke-virtual {p0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 37
    const-string p1, "_B_|_token_"

    invoke-static {p0, p1, p3}, Ltop/niunaijun/blackbox/utils/compat/BundleCompat;->putBinder(Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
