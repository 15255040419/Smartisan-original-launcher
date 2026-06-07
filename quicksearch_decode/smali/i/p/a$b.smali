.class public Li/p/a$b;
.super Ljava/lang/Object;
.source "MenuDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/p/a;->a(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View$OnClickListener;

.field public final synthetic b:Li/p/a;


# direct methods
.method public constructor <init>(Li/p/a;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li/p/a$b;->b:Li/p/a;

    iput-object p2, p0, Li/p/a$b;->a:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/p/a$b;->b:Li/p/a;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object v0, p0, Li/p/a$b;->a:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
