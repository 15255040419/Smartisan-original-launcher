.class public Lb/a/a/n1/x;
.super Ljava/lang/Object;
.source "PriorityThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lb/a/a/n1/x;->a:I

    return-void
.end method

.method public static synthetic a(Lb/a/a/n1/x;)I
    .locals 0

    .line 1
    iget p0, p0, Lb/a/a/n1/x;->a:I

    return p0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .line 1
    new-instance v0, Lb/a/a/n1/x$a;

    invoke-direct {v0, p0, p1}, Lb/a/a/n1/x$a;-><init>(Lb/a/a/n1/x;Ljava/lang/Runnable;)V

    return-object v0
.end method
