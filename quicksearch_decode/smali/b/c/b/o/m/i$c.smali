.class public abstract Lb/c/b/o/m/i$c;
.super Ljava/lang/Object;
.source "ReflectiveTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/b/o/m/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/c/b/o/m/i$c;->a:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Lb/c/b/o/m/i$c;->b:Z

    .line 4
    iput-boolean p3, p0, Lb/c/b/o/m/i$c;->c:Z

    return-void
.end method


# virtual methods
.method public abstract a(Lb/c/b/q/a;Ljava/lang/Object;)V
.end method

.method public abstract a(Lb/c/b/q/c;Ljava/lang/Object;)V
.end method

.method public abstract a(Ljava/lang/Object;)Z
.end method
