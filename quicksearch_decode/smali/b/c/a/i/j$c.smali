.class public final Lb/c/a/i/j$c;
.super Ljava/lang/Object;
.source "Types.java"

# interfaces
.implements Ljava/lang/reflect/GenericArrayType;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/a/i/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final a:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lb/c/a/i/j$d;->e:Lb/c/a/i/j$d;

    invoke-virtual {v0, p1}, Lb/c/a/i/j$d;->c(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lb/c/a/i/j$c;->a:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    .line 3
    invoke-virtual {p0}, Lb/c/a/i/j$c;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {v0, p1}, Lb/c/a/a/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getGenericComponentType()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/a/i/j$c;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/a/i/j$c;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/c/a/i/j$c;->a:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lb/c/a/i/j;->d(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
