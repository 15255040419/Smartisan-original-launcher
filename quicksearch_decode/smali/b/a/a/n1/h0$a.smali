.class public final Lb/a/a/n1/h0$a;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/n1/h0;->a(Landroid/content/Context;Ljava/util/ArrayList;Li/p/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li/p/a;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Li/p/a;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/n1/h0$a;->a:Li/p/a;

    iput-object p2, p0, Lb/a/a/n1/h0$a;->b:Landroid/content/Context;

    iput-object p3, p0, Lb/a/a/n1/h0$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lb/a/a/n1/h0$a;->a:Li/p/a;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lb/a/a/n1/h0$a;->b:Landroid/content/Context;

    iget-object v0, p0, Lb/a/a/n1/h0$a;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lb/a/a/n1/h0;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
