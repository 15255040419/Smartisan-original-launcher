.class public final synthetic Lb/a/a/n1/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Z

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lb/a/a/n1/b;->a:Z

    iput-object p2, p0, Lb/a/a/n1/b;->b:Landroid/content/Context;

    iput-object p3, p0, Lb/a/a/n1/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lb/a/a/n1/b;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-boolean v0, p0, Lb/a/a/n1/b;->a:Z

    iget-object v1, p0, Lb/a/a/n1/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lb/a/a/n1/b;->c:Ljava/lang/String;

    iget-object v3, p0, Lb/a/a/n1/b;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lb/a/a/n1/h0;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
