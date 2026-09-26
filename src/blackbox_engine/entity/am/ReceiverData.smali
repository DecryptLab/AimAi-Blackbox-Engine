.class public Ltop/niunaijun/blackbox/entity/am/ReceiverData;
.super Ljava/lang/Object;
.source "ReceiverData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ltop/niunaijun/blackbox/entity/am/ReceiverData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public activityInfo:Landroid/content/pm/ActivityInfo;

.field public data:Ltop/niunaijun/blackbox/entity/am/PendingResultData;

.field public intent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Ltop/niunaijun/blackbox/entity/am/ReceiverData$1;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/entity/am/ReceiverData$1;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/entity/am/ReceiverData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Ltop/niunaijun/blackbox/entity/am/ReceiverData;->intent:Landroid/content/Intent;

    .line 39
    const-class v0, Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Ltop/niunaijun/blackbox/entity/am/ReceiverData;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 40
    const-class v0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Ltop/niunaijun/blackbox/entity/am/PendingResultData;

    iput-object p1, p0, Ltop/niunaijun/blackbox/entity/am/ReceiverData;->data:Ltop/niunaijun/blackbox/entity/am/PendingResultData;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 29
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Ltop/niunaijun/blackbox/entity/am/ReceiverData;->intent:Landroid/content/Intent;

    .line 30
    const-class v0, Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Ltop/niunaijun/blackbox/entity/am/ReceiverData;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 31
    const-class v0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Ltop/niunaijun/blackbox/entity/am/PendingResultData;

    iput-object p1, p0, Ltop/niunaijun/blackbox/entity/am/ReceiverData;->data:Ltop/niunaijun/blackbox/entity/am/PendingResultData;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 23
    iget-object v0, p0, Ltop/niunaijun/blackbox/entity/am/ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 24
    iget-object v0, p0, Ltop/niunaijun/blackbox/entity/am/ReceiverData;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 25
    iget-object p0, p0, Ltop/niunaijun/blackbox/entity/am/ReceiverData;->data:Ltop/niunaijun/blackbox/entity/am/PendingResultData;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

###### Class top.niunaijun.blackbox.entity.am.ReceiverData.AnonymousClass1 (top.niunaijun.blackbox.entity.am.ReceiverData$1)
