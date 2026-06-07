.class public Lb/a/a/d1/b/a$a;
.super Ljava/lang/Object;
.source "AppPinyinTrieTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/d1/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Character;",
            "Lb/a/a/d1/b/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lb/a/a/d1/b/a$a;


# direct methods
.method public constructor <init>(Lb/a/a/d1/b/a$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lb/a/a/d1/b/a$a;->a:Ljava/util/TreeMap;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lb/a/a/d1/b/a$a;->b:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lb/a/a/d1/b/a$a;->c:Lb/a/a/d1/b/a$a;

    .line 5
    iput-object p1, p0, Lb/a/a/d1/b/a$a;->c:Lb/a/a/d1/b/a$a;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lb/a/a/d1/b/a$a;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    iget-object v2, p0, Lb/a/a/d1/b/a$a;->a:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 3
    :goto_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/a/a/d1/b/a$a;

    .line 5
    iget-object v3, v2, Lb/a/a/d1/b/a$a;->b:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x0

    return v0

    .line 6
    :cond_1
    iget-object v2, v2, Lb/a/a/d1/b/a$a;->a:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return v1
.end method
