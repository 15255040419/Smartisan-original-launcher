.class public final synthetic Lb/a/a/n1/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/a/n1/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lb/a/a/n1/c;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lb/a/a/n1/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lb/a/a/n1/c;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lb/a/a/n1/h0;->a(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
