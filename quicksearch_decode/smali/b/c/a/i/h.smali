.class public abstract Lb/c/a/i/h;
.super Lb/c/a/i/d;
.source "TypeToken.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/c/a/i/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lb/c/a/i/d<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x327b23b1befe387cL


# instance fields
.field public final a:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Lb/c/a/i/d;-><init>()V

    .line 3
    invoke-virtual {p0}, Lb/c/a/i/d;->a()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lb/c/a/i/h;->a:Ljava/lang/reflect/Type;

    .line 4
    iget-object v0, p0, Lb/c/a/i/h;->a:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Cannot construct a TypeToken for a type variable.\nYou probably meant to call new TypeToken<%s>(getClass()) that can resolve the type variable for you.\nIf you do need to create a TypeToken of a type variable, please use TypeToken.of() instead."

    invoke-static {v1, v2, v0}, Lb/c/a/a/l;->b(ZLjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lb/c/a/i/d;-><init>()V

    .line 6
    invoke-static {p1}, Lb/c/a/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/reflect/Type;

    iput-object p1, p0, Lb/c/a/i/h;->a:Ljava/lang/reflect/Type;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/reflect/Type;Lb/c/a/i/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/c/a/i/h;-><init>(Ljava/lang/reflect/Type;)V

    return-void
.end method

.method public static a(Ljava/lang/reflect/Type;)Lb/c/a/i/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lb/c/a/i/h<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/c/a/i/h$a;

    invoke-direct {v0, p0}, Lb/c/a/i/h$a;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lb/c/a/i/h;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lb/c/a/i/h;

    .line 3
    iget-object v0, p0, Lb/c/a/i/h;->a:Ljava/lang/reflect/Type;

    iget-object p1, p1, Lb/c/a/i/h;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/a/i/h;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/a/i/h;->a:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lb/c/a/i/j;->d(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lb/c/a/i/f;

    invoke-direct {v0}, Lb/c/a/i/f;-><init>()V

    iget-object v1, p0, Lb/c/a/i/h;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Lb/c/a/i/f;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lb/c/a/i/h;->a(Ljava/lang/reflect/Type;)Lb/c/a/i/h;

    move-result-object v0

    return-object v0
.end method
