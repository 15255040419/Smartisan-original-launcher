.class public final Lb/c/b/o/l$a;
.super Lb/c/b/o/l;
.source "UnsafeAllocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/c/b/o/l;->a()Lb/c/b/o/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/reflect/Method;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/c/b/o/l$a;->a:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lb/c/b/o/l$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Lb/c/b/o/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lb/c/b/o/l;->b(Ljava/lang/Class;)V

    .line 2
    iget-object v0, p0, Lb/c/b/o/l$a;->a:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lb/c/b/o/l$a;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
