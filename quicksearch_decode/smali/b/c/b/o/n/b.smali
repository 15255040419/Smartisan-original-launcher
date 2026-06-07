.class public abstract Lb/c/b/o/n/b;
.super Ljava/lang/Object;
.source "ReflectionAccessor.java"


# static fields
.field public static final a:Lb/c/b/o/n/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lb/c/b/o/e;->b()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    new-instance v0, Lb/c/b/o/n/a;

    invoke-direct {v0}, Lb/c/b/o/n/a;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lb/c/b/o/n/c;

    invoke-direct {v0}, Lb/c/b/o/n/c;-><init>()V

    :goto_0
    sput-object v0, Lb/c/b/o/n/b;->a:Lb/c/b/o/n/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lb/c/b/o/n/b;
    .locals 1

    .line 1
    sget-object v0, Lb/c/b/o/n/b;->a:Lb/c/b/o/n/b;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/reflect/AccessibleObject;)V
.end method
