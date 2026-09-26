.class Ltop/niunaijun/blackbox/utils/TrieTree$TrieNode;
.super Ljava/lang/Object;
.source "TrieTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/utils/TrieTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrieNode"
.end annotation


# instance fields
.field children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltop/niunaijun/blackbox/utils/TrieTree$TrieNode;",
            ">;"
        }
    .end annotation
.end field

.field content:C

.field isEnd:Z

.field word:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Ltop/niunaijun/blackbox/utils/TrieTree$TrieNode;->isEnd:Z

    .line 16
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/utils/TrieTree$TrieNode;->children:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(CLjava/lang/String;)V
    .registers 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Ltop/niunaijun/blackbox/utils/TrieTree$TrieNode;->isEnd:Z

    .line 16
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/utils/TrieTree$TrieNode;->children:Ljava/util/List;

    .line 21
    iput-char p1, p0, Ltop/niunaijun/blackbox/utils/TrieTree$TrieNode;->content:C

    .line 22
    iput-object p2, p0, Ltop/niunaijun/blackbox/utils/TrieTree$TrieNode;->word:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 28
    instance-of v0, p1, Ltop/niunaijun/blackbox/utils/TrieTree$TrieNode;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 29
    check-cast p1, Ltop/niunaijun/blackbox/utils/TrieTree$TrieNode;

    iget-char p1, p1, Ltop/niunaijun/blackbox/utils/TrieTree$TrieNode;->content:C

    iget-char p0, p0, Ltop/niunaijun/blackbox/utils/TrieTree$TrieNode;->content:C

    if-ne p1, p0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    return v1
.end method

.method public nextNode(C)Ltop/niunaijun/blackbox/utils/TrieTree$TrieNode;
    .registers 4

    .line 35
    iget-object p0, p0, Ltop/niunaijun/blackbox/utils/TrieTree$TrieNode;->children:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/utils/TrieTree$TrieNode;

    .line 36
    iget-char v1, v0, Ltop/niunaijun/blackbox/utils/TrieTree$TrieNode;->content:C

    if-ne v1, p1, :cond_6

    return-object v0

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method
