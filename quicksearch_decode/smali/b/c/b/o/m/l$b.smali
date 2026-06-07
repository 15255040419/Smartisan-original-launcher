.class public final Lb/c/b/o/m/l$b;
.super Ljava/lang/Object;
.source "TreeTypeAdapter.java"

# interfaces
.implements Lcom/google/gson/JsonSerializationContext;
.implements Lcom/google/gson/JsonDeserializationContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/b/o/m/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lb/c/b/o/m/l;


# direct methods
.method public constructor <init>(Lb/c/b/o/m/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/c/b/o/m/l$b;->a:Lb/c/b/o/m/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lb/c/b/o/m/l;Lb/c/b/o/m/l$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lb/c/b/o/m/l$b;-><init>(Lb/c/b/o/m/l;)V

    return-void
.end method


# virtual methods
.method public deserialize(Lb/c/b/e;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lb/c/b/e;",
            "Ljava/lang/reflect/Type;",
            ")TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/c/b/o/m/l$b;->a:Lb/c/b/o/m/l;

    iget-object v0, v0, Lb/c/b/o/m/l;->c:Lb/c/b/c;

    invoke-virtual {v0, p1, p2}, Lb/c/b/c;->a(Lb/c/b/e;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Ljava/lang/Object;)Lb/c/b/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/b/o/m/l$b;->a:Lb/c/b/o/m/l;

    iget-object v0, v0, Lb/c/b/o/m/l;->c:Lb/c/b/c;

    invoke-virtual {v0, p1}, Lb/c/b/c;->b(Ljava/lang/Object;)Lb/c/b/e;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lb/c/b/e;
    .locals 1

    .line 2
    iget-object v0, p0, Lb/c/b/o/m/l$b;->a:Lb/c/b/o/m/l;

    iget-object v0, v0, Lb/c/b/o/m/l;->c:Lb/c/b/c;

    invoke-virtual {v0, p1, p2}, Lb/c/b/c;->b(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lb/c/b/e;

    move-result-object p1

    return-object p1
.end method
