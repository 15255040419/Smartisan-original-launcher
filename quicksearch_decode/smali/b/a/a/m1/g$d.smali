.class public Lb/a/a/m1/g$d;
.super Ljava/lang/Object;
.source "SuggestionsAdapterBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/m1/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final a:J

.field public final synthetic b:Lb/a/a/m1/g;


# direct methods
.method public constructor <init>(Lb/a/a/m1/g;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/m1/g$d;->b:Lb/a/a/m1/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Lb/a/a/m1/g$d;->a:J

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/a/m1/g$d;->b:Lb/a/a/m1/g;

    iget-wide v1, p0, Lb/a/a/m1/g$d;->a:J

    invoke-virtual {v0, p1, v1, v2}, Lb/a/a/m1/g;->onSuggestionClicked(Landroid/view/View;J)V

    return-void
.end method
