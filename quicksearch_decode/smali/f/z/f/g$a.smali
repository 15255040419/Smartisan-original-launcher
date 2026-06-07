.class public final Lf/z/f/g$a;
.super Ljava/lang/ref/WeakReference;
.source "StreamAllocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/z/f/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Lf/z/f/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lf/z/f/g;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 2
    iput-object p2, p0, Lf/z/f/g$a;->a:Ljava/lang/Object;

    return-void
.end method
