.class Lcom/smartisanos/launcher/animations/F;
.super Lcom/smartisanos/smengine/a;
.source "CellUninstallAnimation.java"


# instance fields
.field private PA:Lcom/smartisanos/smengine/a/j;

.field final QA:F

.field final RA:F

.field final offset:F

.field final synthetic this$0:Lcom/smartisanos/launcher/animations/G;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/animations/G;Lcom/smartisanos/smengine/a/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/F;->this$0:Lcom/smartisanos/launcher/animations/G;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/F;->PA:Lcom/smartisanos/smengine/a/j;

    const/high16 p1, 0x40000000    # 2.0f

    .line 3
    iput p1, p0, Lcom/smartisanos/launcher/animations/F;->QA:F

    .line 4
    iput p1, p0, Lcom/smartisanos/launcher/animations/F;->offset:F

    const p1, 0x3d8f5c29    # 0.07f

    .line 5
    iput p1, p0, Lcom/smartisanos/launcher/animations/F;->RA:F

    .line 6
    iput-object p2, p0, Lcom/smartisanos/launcher/animations/F;->PA:Lcom/smartisanos/smengine/a/j;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/F;->this$0:Lcom/smartisanos/launcher/animations/G;

    invoke-static {v1}, Lcom/smartisanos/launcher/animations/G;->a(Lcom/smartisanos/launcher/animations/G;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/F;->this$0:Lcom/smartisanos/launcher/animations/G;

    invoke-static {v1}, Lcom/smartisanos/launcher/animations/G;->b(Lcom/smartisanos/launcher/animations/G;)Lcom/smartisanos/smengine/g;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/F;->this$0:Lcom/smartisanos/launcher/animations/G;

    invoke-static {v1}, Lcom/smartisanos/launcher/animations/G;->b(Lcom/smartisanos/launcher/animations/G;)Lcom/smartisanos/smengine/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->Kj()V

    .line 4
    :cond_0
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/F;->this$0:Lcom/smartisanos/launcher/animations/G;

    invoke-static {v1}, Lcom/smartisanos/launcher/animations/G;->c(Lcom/smartisanos/launcher/animations/G;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/F;->this$0:Lcom/smartisanos/launcher/animations/G;

    new-instance v2, Lcom/smartisanos/smengine/g;

    invoke-direct {v2}, Lcom/smartisanos/smengine/g;-><init>()V

    invoke-static {v1, v2}, Lcom/smartisanos/launcher/animations/G;->a(Lcom/smartisanos/launcher/animations/G;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    .line 6
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/F;->this$0:Lcom/smartisanos/launcher/animations/G;

    invoke-static {v1}, Lcom/smartisanos/launcher/animations/G;->c(Lcom/smartisanos/launcher/animations/G;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->zm()Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    new-instance v1, Lcom/smartisanos/smengine/oa;

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/F;->this$0:Lcom/smartisanos/launcher/animations/G;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/G;->c(Lcom/smartisanos/launcher/animations/G;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const v10, 0x3d8f5c29    # 0.07f

    .line 8
    invoke-virtual {v1, v10}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v11, 0xc

    .line 9
    invoke-virtual {v1, v11}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v3, 0x0

    .line 10
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/F;->PA:Lcom/smartisanos/smengine/a/j;

    iget v4, v2, Lcom/smartisanos/smengine/a/j;->x:F

    const/high16 v12, 0x40000000    # 2.0f

    sub-float v5, v4, v12

    iget v6, v2, Lcom/smartisanos/smengine/a/j;->y:F

    add-float v7, v6, v12

    iget v9, v2, Lcom/smartisanos/smengine/a/j;->z:F

    add-float v8, v4, v12

    sub-float v13, v6, v12

    move-object v2, v1

    move v4, v5

    move v5, v7

    move v6, v9

    move v7, v8

    move v8, v13

    invoke-virtual/range {v2 .. v9}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 11
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/F;->this$0:Lcom/smartisanos/launcher/animations/G;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/G;->b(Lcom/smartisanos/launcher/animations/G;)Lcom/smartisanos/smengine/g;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 12
    new-instance v1, Lcom/smartisanos/smengine/oa;

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/F;->this$0:Lcom/smartisanos/launcher/animations/G;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/G;->c(Lcom/smartisanos/launcher/animations/G;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 13
    invoke-virtual {v1, v10}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 14
    invoke-virtual {v1, v11}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 15
    new-instance v2, Ljava/lang/Float;

    const v3, -0x42f105cb

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    new-instance v4, Ljava/lang/Float;

    const v5, 0x3d0efa35

    invoke-direct {v4, v5}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v6, 0x2

    invoke-virtual {v1, v6, v2, v4}, Lcom/smartisanos/smengine/oa;->a(IFF)V

    .line 16
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/F;->this$0:Lcom/smartisanos/launcher/animations/G;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/G;->b(Lcom/smartisanos/launcher/animations/G;)Lcom/smartisanos/smengine/g;

    move-result-object v2

    invoke-virtual {v2, v10, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 17
    new-instance v1, Lcom/smartisanos/smengine/oa;

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/F;->this$0:Lcom/smartisanos/launcher/animations/G;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/G;->c(Lcom/smartisanos/launcher/animations/G;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 18
    invoke-virtual {v1, v10}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 19
    invoke-virtual {v1, v11}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v14, 0x0

    .line 20
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/F;->PA:Lcom/smartisanos/smengine/a/j;

    iget v4, v2, Lcom/smartisanos/smengine/a/j;->x:F

    add-float v15, v4, v12

    iget v7, v2, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float v16, v7, v12

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->z:F

    add-float v18, v4, v12

    add-float v19, v7, v12

    move-object v13, v1

    move/from16 v17, v2

    move/from16 v20, v2

    invoke-virtual/range {v13 .. v20}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 21
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/F;->this$0:Lcom/smartisanos/launcher/animations/G;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/G;->b(Lcom/smartisanos/launcher/animations/G;)Lcom/smartisanos/smengine/g;

    move-result-object v2

    invoke-virtual {v2, v10, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 22
    new-instance v1, Lcom/smartisanos/smengine/oa;

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/F;->this$0:Lcom/smartisanos/launcher/animations/G;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/G;->c(Lcom/smartisanos/launcher/animations/G;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 23
    invoke-virtual {v1, v10}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 24
    invoke-virtual {v1, v11}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 25
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/F;->PA:Lcom/smartisanos/smengine/a/j;

    iget v4, v2, Lcom/smartisanos/smengine/a/j;->x:F

    add-float v15, v4, v12

    iget v7, v2, Lcom/smartisanos/smengine/a/j;->y:F

    add-float v16, v7, v12

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->z:F

    sub-float v18, v4, v12

    sub-float v19, v7, v12

    move-object v13, v1

    move/from16 v17, v2

    move/from16 v20, v2

    invoke-virtual/range {v13 .. v20}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 26
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/F;->this$0:Lcom/smartisanos/launcher/animations/G;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/G;->b(Lcom/smartisanos/launcher/animations/G;)Lcom/smartisanos/smengine/g;

    move-result-object v2

    const v4, 0x3e0f5c29    # 0.14f

    invoke-virtual {v2, v4, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 27
    new-instance v1, Lcom/smartisanos/smengine/oa;

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/F;->this$0:Lcom/smartisanos/launcher/animations/G;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/G;->c(Lcom/smartisanos/launcher/animations/G;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 28
    invoke-virtual {v1, v10}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 29
    invoke-virtual {v1, v11}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 30
    new-instance v2, Ljava/lang/Float;

    invoke-direct {v2, v5}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, v3}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v1, v6, v2, v3}, Lcom/smartisanos/smengine/oa;->a(IFF)V

    .line 31
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/F;->this$0:Lcom/smartisanos/launcher/animations/G;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/G;->b(Lcom/smartisanos/launcher/animations/G;)Lcom/smartisanos/smengine/g;

    move-result-object v2

    const v3, 0x3e570a3e    # 0.21000001f

    invoke-virtual {v2, v3, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 32
    new-instance v1, Lcom/smartisanos/smengine/oa;

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/F;->this$0:Lcom/smartisanos/launcher/animations/G;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/G;->c(Lcom/smartisanos/launcher/animations/G;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 33
    invoke-virtual {v1, v10}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v2, 0xf

    .line 34
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 35
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/F;->PA:Lcom/smartisanos/smengine/a/j;

    iget v4, v2, Lcom/smartisanos/smengine/a/j;->x:F

    sub-float v15, v4, v12

    iget v5, v2, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float v16, v5, v12

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->z:F

    sub-float v18, v4, v12

    add-float v19, v5, v12

    move-object v13, v1

    move/from16 v17, v2

    move/from16 v20, v2

    invoke-virtual/range {v13 .. v20}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 36
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/F;->this$0:Lcom/smartisanos/launcher/animations/G;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/G;->b(Lcom/smartisanos/launcher/animations/G;)Lcom/smartisanos/smengine/g;

    move-result-object v2

    invoke-virtual {v2, v3, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 37
    new-instance v1, Lcom/smartisanos/launcher/animations/F;

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/F;->this$0:Lcom/smartisanos/launcher/animations/G;

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/F;->PA:Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1, v2, v3}, Lcom/smartisanos/launcher/animations/F;-><init>(Lcom/smartisanos/launcher/animations/G;Lcom/smartisanos/smengine/a/j;)V

    .line 38
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/F;->this$0:Lcom/smartisanos/launcher/animations/G;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/G;->b(Lcom/smartisanos/launcher/animations/G;)Lcom/smartisanos/smengine/g;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 39
    iget-object v0, v0, Lcom/smartisanos/launcher/animations/F;->this$0:Lcom/smartisanos/launcher/animations/G;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/G;->b(Lcom/smartisanos/launcher/animations/G;)Lcom/smartisanos/smengine/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->start()V

    goto :goto_0

    .line 40
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "### rock animation target wrong, wrong cell row = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/F;->this$0:Lcom/smartisanos/launcher/animations/G;

    .line 41
    invoke-static {v3}, Lcom/smartisanos/launcher/animations/G;->c(Lcom/smartisanos/launcher/animations/G;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " col = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/F;->this$0:Lcom/smartisanos/launcher/animations/G;

    invoke-static {v3}, Lcom/smartisanos/launcher/animations/G;->c(Lcom/smartisanos/launcher/animations/G;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " appName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/F;->this$0:Lcom/smartisanos/launcher/animations/G;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/G;->c(Lcom/smartisanos/launcher/animations/G;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_3
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/F;->this$0:Lcom/smartisanos/launcher/animations/G;

    invoke-static {v1}, Lcom/smartisanos/launcher/animations/G;->b(Lcom/smartisanos/launcher/animations/G;)Lcom/smartisanos/smengine/g;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 43
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/F;->this$0:Lcom/smartisanos/launcher/animations/G;

    invoke-static {v1}, Lcom/smartisanos/launcher/animations/G;->b(Lcom/smartisanos/launcher/animations/G;)Lcom/smartisanos/smengine/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->Kj()V

    .line 44
    iget-object v0, v0, Lcom/smartisanos/launcher/animations/F;->this$0:Lcom/smartisanos/launcher/animations/G;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/G;->a(Lcom/smartisanos/launcher/animations/G;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    :cond_4
    :goto_0
    return-void
.end method
