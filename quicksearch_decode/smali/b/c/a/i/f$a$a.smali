.class public Lb/c/a/i/f$a$a;
.super Lb/c/a/i/f$a;
.source "TypeResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/c/a/i/f$a;->a(Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/reflect/TypeVariable;

.field public final synthetic c:Lb/c/a/i/f$a;


# direct methods
.method public constructor <init>(Lb/c/a/i/f$a;Ljava/lang/reflect/TypeVariable;Lb/c/a/i/f$a;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lb/c/a/i/f$a$a;->b:Ljava/lang/reflect/TypeVariable;

    iput-object p3, p0, Lb/c/a/i/f$a$a;->c:Lb/c/a/i/f$a;

    invoke-direct {p0}, Lb/c/a/i/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/TypeVariable;Lb/c/a/i/f$a;)Ljava/lang/reflect/Type;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Lb/c/a/i/f$a;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    iget-object v1, p0, Lb/c/a/i/f$a$a;->b:Ljava/lang/reflect/TypeVariable;

    invoke-interface {v1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lb/c/a/i/f$a$a;->c:Lb/c/a/i/f$a;

    invoke-virtual {v0, p1, p2}, Lb/c/a/i/f$a;->a(Ljava/lang/reflect/TypeVariable;Lb/c/a/i/f$a;)Ljava/lang/reflect/Type;

    move-result-object p1

    return-object p1
.end method
