.class public Lb/c/a/c/u0$c;
.super Ljava/lang/Object;
.source "ImmutableSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/a/c/u0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final a:[Ljava/lang/Object;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/c/a/c/u0$c;->a:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/a/c/u0$c;->a:[Ljava/lang/Object;

    invoke-static {v0}, Lb/c/a/c/u0;->a([Ljava/lang/Object;)Lb/c/a/c/u0;

    move-result-object v0

    return-object v0
.end method
