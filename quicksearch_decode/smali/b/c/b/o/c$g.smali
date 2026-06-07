.class public Lb/c/b/o/c$g;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lcom/google/gson/internal/ObjectConstructor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/c/b/o/c;->a(Lb/c/b/p/a;)Lcom/google/gson/internal/ObjectConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/internal/ObjectConstructor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/gson/InstanceCreator;

.field public final synthetic b:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lb/c/b/o/c;Lcom/google/gson/InstanceCreator;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lb/c/b/o/c$g;->a:Lcom/google/gson/InstanceCreator;

    iput-object p3, p0, Lb/c/b/o/c$g;->b:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/c/b/o/c$g;->a:Lcom/google/gson/InstanceCreator;

    iget-object v1, p0, Lb/c/b/o/c$g;->b:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lcom/google/gson/InstanceCreator;->createInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
