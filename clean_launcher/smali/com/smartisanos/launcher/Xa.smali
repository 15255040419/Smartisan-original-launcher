.class Lcom/smartisanos/launcher/Xa;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Ei:Lcom/smartisanos/launcher/view/a/g;

.field final synthetic Fi:Z

.field final synthetic ui:I

.field final synthetic vi:I


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/a/g;ZII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/Xa;->Ei:Lcom/smartisanos/launcher/view/a/g;

    iput-boolean p2, p0, Lcom/smartisanos/launcher/Xa;->Fi:Z

    iput p3, p0, Lcom/smartisanos/launcher/Xa;->ui:I

    iput p4, p0, Lcom/smartisanos/launcher/Xa;->vi:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/Xa;->Ei:Lcom/smartisanos/launcher/view/a/g;

    iget-boolean v1, p0, Lcom/smartisanos/launcher/Xa;->Fi:Z

    iget v2, p0, Lcom/smartisanos/launcher/Xa;->ui:I

    iget p0, p0, Lcom/smartisanos/launcher/Xa;->vi:I

    invoke-static {v0, v1, v2, p0}, Lcom/smartisanos/launcher/eb;->a(Lcom/smartisanos/launcher/view/a/g;ZII)V

    return-void
.end method
