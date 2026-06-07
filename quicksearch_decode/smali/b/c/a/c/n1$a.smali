.class public final Lb/c/a/c/n1$a;
.super Lb/c/a/c/v0;
.source "RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/a/c/n1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/c/a/c/n1$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lb/c/a/c/v0<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final c:Lb/c/a/c/n1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/a/c/n1<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/c/a/c/n1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/a/c/n1<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lb/c/a/c/v0;-><init>()V

    .line 2
    iput-object p1, p0, Lb/c/a/c/n1$a;->c:Lb/c/a/c/n1;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/a/c/n1$a;->c:Lb/c/a/c/n1;

    invoke-virtual {v0, p1}, Lb/c/a/c/p0;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/c/a/c/n1$a;->c:Lb/c/a/c/n1;

    iget-object v0, v0, Lb/c/a/c/n1;->e:[Ljava/util/Map$Entry;

    aget-object p1, v0, p1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/a/c/n1$a;->c:Lb/c/a/c/n1;

    invoke-virtual {v0}, Lb/c/a/c/n1;->size()I

    move-result v0

    return v0
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lb/c/a/c/n1$a$a;

    iget-object v1, p0, Lb/c/a/c/n1$a;->c:Lb/c/a/c/n1;

    invoke-direct {v0, v1}, Lb/c/a/c/n1$a$a;-><init>(Lb/c/a/c/p0;)V

    return-object v0
.end method
