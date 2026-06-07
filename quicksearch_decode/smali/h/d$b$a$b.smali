.class public Lh/d$b$a$b;
.super Ljava/lang/Object;
.source "ExecutorCallAdapterFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh/d$b$a;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Throwable;

.field public final synthetic b:Lh/d$b$a;


# direct methods
.method public constructor <init>(Lh/d$b$a;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh/d$b$a$b;->b:Lh/d$b$a;

    iput-object p2, p0, Lh/d$b$a$b;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lh/d$b$a$b;->b:Lh/d$b$a;

    iget-object v1, v0, Lh/d$b$a;->a:Lretrofit2/Callback;

    iget-object v0, v0, Lh/d$b$a;->b:Lh/d$b;

    iget-object v2, p0, Lh/d$b$a$b;->a:Ljava/lang/Throwable;

    invoke-interface {v1, v0, v2}, Lretrofit2/Callback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    return-void
.end method
