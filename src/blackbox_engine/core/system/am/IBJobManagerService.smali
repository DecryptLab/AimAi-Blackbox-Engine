.class public interface abstract Ltop/niunaijun/blackbox/core/system/am/IBJobManagerService;
.super Ljava/lang/Object;
.source "IBJobManagerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/core/system/am/IBJobManagerService$_Parcel;,
        Ltop/niunaijun/blackbox/core/system/am/IBJobManagerService$Stub;,
        Ltop/niunaijun/blackbox/core/system/am/IBJobManagerService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "top.niunaijun.blackbox.core.system.am.IBJobManagerService"


# virtual methods
.method public abstract cancel(Ljava/lang/String;II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract cancelAll(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract queryJobRecord(Ljava/lang/String;II)Ltop/niunaijun/blackbox/entity/JobRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract schedule(Landroid/app/job/JobInfo;I)Landroid/app/job/JobInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

###### Class top.niunaijun.blackbox.core.system.am.IBJobManagerService.Default (top.niunaijun.blackbox.core.system.am.IBJobManagerService$Default)
