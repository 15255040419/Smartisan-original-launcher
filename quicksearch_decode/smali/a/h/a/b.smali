.class public abstract La/h/a/b;
.super La/h/a/a;
.source "ResourceCursorAdapter.java"


# instance fields
.field public i:I

.field public j:I

.field public k:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3, p4}, La/h/a/a;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 2
    iput p2, p0, La/h/a/b;->j:I

    iput p2, p0, La/h/a/b;->i:I

    const-string p2, "layout_inflater"

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, La/h/a/b;->k:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object p1, p0, La/h/a/b;->k:Landroid/view/LayoutInflater;

    iget p2, p0, La/h/a/b;->j:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object p1, p0, La/h/a/b;->k:Landroid/view/LayoutInflater;

    iget p2, p0, La/h/a/b;->i:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
