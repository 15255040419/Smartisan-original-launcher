.class Lcom/smartisanos/launcher/d/f;
.super Ljava/lang/Object;
.source "SectorLayoutHandler.java"

# interfaces
.implements Lsmartisanos/widget/sectormenu/IconViewCallBack;


# instance fields
.field final synthetic Us:Ljava/util/List;

.field final synthetic Vs:Z

.field final synthetic qi:I


# direct methods
.method constructor <init>(Ljava/util/List;ZI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/d/f;->Us:Ljava/util/List;

    iput-boolean p2, p0, Lcom/smartisanos/launcher/d/f;->Vs:Z

    iput p3, p0, Lcom/smartisanos/launcher/d/f;->qi:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(ILsmartisanos/widget/sectormenu/IconView;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/smartisanos/launcher/d/f;->Us:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/sectormenu/ShortcutIconInfo;

    .line 2
    iget-boolean p2, p0, Lcom/smartisanos/launcher/d/f;->Vs:Z

    iget p0, p0, Lcom/smartisanos/launcher/d/f;->qi:I

    invoke-static {p1, p2, p0}, Lcom/smartisanos/launcher/d/h;->a(Lsmartisanos/widget/sectormenu/ShortcutIconInfo;ZI)V

    return-void
.end method
