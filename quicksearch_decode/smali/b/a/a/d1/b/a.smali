.class public Lb/a/a/d1/b/a;
.super Ljava/lang/Object;
.source "AppPinyinTrieTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/d1/b/a$a;
    }
.end annotation


# instance fields
.field public a:Lb/a/a/d1/b/a$a;

.field public b:Lb/a/a/d1/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/a/d1/b/b<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lb/a/a/d1/b/a;->a:Lb/a/a/d1/b/a$a;

    .line 3
    new-instance v1, Lb/a/a/d1/b/a$a;

    invoke-direct {v1, v0}, Lb/a/a/d1/b/a$a;-><init>(Lb/a/a/d1/b/a$a;)V

    iput-object v1, p0, Lb/a/a/d1/b/a;->a:Lb/a/a/d1/b/a$a;

    .line 4
    new-instance v0, Lb/a/a/d1/b/b;

    invoke-direct {v0}, Lb/a/a/d1/b/b;-><init>()V

    iput-object v0, p0, Lb/a/a/d1/b/a;->b:Lb/a/a/d1/b/b;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lb/a/a/d1/b/a$a;
    .locals 9

    .line 17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "AppPhoneticTrieTree"

    if-eqz v0, :cond_0

    const-string p1, "find: A null pinyin ?"

    .line 18
    invoke-static {v2, p1}, Lb/a/a/n1/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 19
    :cond_0
    iget-object v0, p0, Lb/a/a/d1/b/a;->a:Lb/a/a/d1/b/a$a;

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 21
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-char v6, v3, v5

    .line 22
    iget-object v7, v0, Lb/a/a/d1/b/a$a;->a:Ljava/util/TreeMap;

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 23
    iget-object v0, v0, Lb/a/a/d1/b/a$a;->a:Ljava/util/TreeMap;

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/d1/b/a$a;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 24
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "find: Cannot find package name which is located in "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lb/a/a/n1/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2
    return-object v0
.end method

.method public a()V
    .locals 2

    .line 6
    new-instance v0, Lb/a/a/d1/b/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/a/a/d1/b/a$a;-><init>(Lb/a/a/d1/b/a$a;)V

    iput-object v0, p0, Lb/a/a/d1/b/a;->a:Lb/a/a/d1/b/a$a;

    .line 7
    iget-object v0, p0, Lb/a/a/d1/b/a;->b:Lb/a/a/d1/b/b;

    invoke-virtual {v0}, Lb/a/a/d1/b/b;->a()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lb/a/a/d1/b/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lb/a/a/d1/b/b<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lb/a/a/d1/b/a;->a:Lb/a/a/d1/b/a$a;

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 10
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-char v4, v1, v3

    .line 11
    iget-object v5, v0, Lb/a/a/d1/b/a$a;->a:Ljava/util/TreeMap;

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 12
    iget-object v0, v0, Lb/a/a/d1/b/a$a;->a:Ljava/util/TreeMap;

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/d1/b/a$a;

    goto :goto_1

    .line 13
    :cond_0
    new-instance v5, Lb/a/a/d1/b/a$a;

    invoke-direct {v5, v0}, Lb/a/a/d1/b/a$a;-><init>(Lb/a/a/d1/b/a$a;)V

    .line 14
    iget-object v0, v0, Lb/a/a/d1/b/a$a;->a:Ljava/util/TreeMap;

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v0, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v5

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p3, p2, p1}, Lb/a/a/d1/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    iget-object p1, v0, Lb/a/a/d1/b/a$a;->b:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lb/a/a/d1/b/a;->b:Lb/a/a/d1/b/b;

    invoke-virtual {p0, p1, p3, v0}, Lb/a/a/d1/b/a;->a(Ljava/lang/String;Ljava/lang/String;Lb/a/a/d1/b/b;)V

    .line 4
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lb/a/a/d1/b/a;->b:Lb/a/a/d1/b/b;

    invoke-virtual {p0, p2, p3, p1}, Lb/a/a/d1/b/a;->a(Ljava/lang/String;Ljava/lang/String;Lb/a/a/d1/b/b;)V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lb/a/a/d1/b/a;->b:Lb/a/a/d1/b/b;

    invoke-virtual {v0, p1}, Lb/a/a/d1/b/b;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "AppPhoneticTrieTree"

    if-eqz v0, :cond_5

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4
    invoke-virtual {p0, v3}, Lb/a/a/d1/b/a;->a(Ljava/lang/String;)Lb/a/a/d1/b/a$a;

    move-result-object v5

    if-nez v5, :cond_2

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "delete: Pinyin: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not in our record!!!!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lb/a/a/n1/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 6
    :cond_2
    iget-object v6, v5, Lb/a/a/d1/b/a$a;->b:Ljava/util/HashSet;

    invoke-virtual {v6, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    .line 8
    :goto_1
    iget-object v4, v5, Lb/a/a/d1/b/a$a;->b:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9
    invoke-virtual {v5}, Lb/a/a/d1/b/a$a;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 10
    iget-object v4, v5, Lb/a/a/d1/b/a$a;->c:Lb/a/a/d1/b/a$a;

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    .line 11
    iput-object v7, v5, Lb/a/a/d1/b/a$a;->c:Lb/a/a/d1/b/a$a;

    .line 12
    iget-object v5, v4, Lb/a/a/d1/b/a$a;->a:Ljava/util/TreeMap;

    add-int/lit8 v7, v6, -0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v4

    move v6, v7

    goto :goto_1

    .line 13
    :cond_4
    iget-object v0, p0, Lb/a/a/d1/b/a;->b:Lb/a/a/d1/b/b;

    invoke-virtual {v0, p1}, Lb/a/a/d1/b/b;->b(Ljava/lang/Object;)Ljava/util/List;

    return v4

    .line 14
    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete: Are you sure that you inserted this package: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lb/a/a/n1/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lb/a/a/d1/b/a;->a(Ljava/lang/String;)Lb/a/a/d1/b/a$a;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 4
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 5
    :goto_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/a/a/d1/b/a$a;

    .line 7
    iget-object v2, p1, Lb/a/a/d1/b/a$a;->b:Ljava/util/HashSet;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    iget-object p1, p1, Lb/a/a/d1/b/a$a;->a:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
