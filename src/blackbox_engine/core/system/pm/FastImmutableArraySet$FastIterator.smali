.class final Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet$FastIterator;
.super Ljava/lang/Object;
.source "FastImmutableArraySet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FastIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mContents:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field mIndex:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet$FastIterator;->mContents:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 65
    iget v0, p0, Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet$FastIterator;->mIndex:I

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet$FastIterator;->mContents:[Ljava/lang/Object;

    array-length p0, p0

    if-eq v0, p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet$FastIterator;->mContents:[Ljava/lang/Object;

    iget v1, p0, Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet$FastIterator;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet$FastIterator;->mIndex:I

    aget-object p0, v0, v1

    return-object p0
.end method

.method public remove()V
    .registers 1

    .line 75
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
