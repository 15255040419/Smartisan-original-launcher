.class Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;
.super Ljava/lang/Object;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragSortTracker"
.end annotation


# instance fields
.field mBuilder:Ljava/lang/StringBuilder;

.field mFile:Ljava/io/File;

.field private mNumFlushes:I

.field private mNumInBuffer:I

.field private mTracking:Z

.field final synthetic this$0:Lcom/android/settings/wifi/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/dslv/DragSortListView;)V
    .locals 3

    const-string v0, "mobeta"

    .line 3139
    iput-object p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3130
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 3134
    iput p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mNumInBuffer:I

    .line 3135
    iput p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mNumFlushes:I

    .line 3137
    iput-boolean p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mTracking:Z

    .line 3140
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    .line 3141
    new-instance v1, Ljava/io/File;

    const-string v2, "dslv_state.txt"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mFile:Ljava/io/File;

    .line 3143
    iget-object p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3145
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    const-string p0, "file created"

    .line 3146
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Could not create dslv_state.txt"

    .line 3148
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3149
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public appendState()V
    .locals 9

    .line 3162
    iget-boolean v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mTracking:Z

    if-nez v0, :cond_0

    return-void

    .line 3166
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "<DSLVState>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3167
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getChildCount()I

    move-result v0

    .line 3168
    iget-object v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-virtual {v1}, Lcom/android/settings/wifi/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 3169
    iget-object v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, "    <Positions>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, ","

    if-ge v3, v0, :cond_1

    .line 3171
    iget-object v5, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    add-int v6, v1, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3173
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, "</Positions>\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3175
    iget-object v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, "    <Tops>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_2

    .line 3177
    iget-object v5, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-virtual {v6, v3}, Lcom/android/settings/wifi/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3179
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, "</Tops>\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3180
    iget-object v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, "    <Bottoms>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_3

    .line 3182
    iget-object v5, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-virtual {v6, v3}, Lcom/android/settings/wifi/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3184
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, "</Bottoms>\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3186
    iget-object v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, "    <FirstExpPos>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v5}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$1300(Lcom/android/settings/wifi/dslv/DragSortListView;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "</FirstExpPos>\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3187
    iget-object v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, "    <FirstExpBlankHeight>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    .line 3188
    invoke-static {v5}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$1300(Lcom/android/settings/wifi/dslv/DragSortListView;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$2800(Lcom/android/settings/wifi/dslv/DragSortListView;I)I

    move-result v5

    iget-object v6, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v6}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$1300(Lcom/android/settings/wifi/dslv/DragSortListView;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$2900(Lcom/android/settings/wifi/dslv/DragSortListView;I)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "</FirstExpBlankHeight>\n"

    .line 3189
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3190
    iget-object v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, "    <SecondExpPos>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v5}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$1400(Lcom/android/settings/wifi/dslv/DragSortListView;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "</SecondExpPos>\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3191
    iget-object v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, "    <SecondExpBlankHeight>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    .line 3192
    invoke-static {v5}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$1400(Lcom/android/settings/wifi/dslv/DragSortListView;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$2800(Lcom/android/settings/wifi/dslv/DragSortListView;I)I

    move-result v5

    iget-object v6, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v6}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$1400(Lcom/android/settings/wifi/dslv/DragSortListView;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$2900(Lcom/android/settings/wifi/dslv/DragSortListView;I)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "</SecondExpBlankHeight>\n"

    .line 3193
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3194
    iget-object v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, "    <SrcPos>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v5}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$900(Lcom/android/settings/wifi/dslv/DragSortListView;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "</SrcPos>\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3195
    iget-object v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, "    <SrcHeight>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v5}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$1100(Lcom/android/settings/wifi/dslv/DragSortListView;)I

    move-result v5

    iget-object v6, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-virtual {v6}, Lcom/android/settings/wifi/dslv/DragSortListView;->getDividerHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "</SrcHeight>\n"

    .line 3196
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3197
    iget-object v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, "    <ViewHeight>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-virtual {v5}, Lcom/android/settings/wifi/dslv/DragSortListView;->getHeight()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "</ViewHeight>\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3198
    iget-object v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, "    <LastY>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v5}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$3000(Lcom/android/settings/wifi/dslv/DragSortListView;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "</LastY>\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3199
    iget-object v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, "    <FloatY>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v5}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$2000(Lcom/android/settings/wifi/dslv/DragSortListView;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "</FloatY>\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3200
    iget-object v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, "    <ShuffleEdges>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v2

    :goto_3
    if-ge v3, v0, :cond_4

    .line 3202
    iget-object v5, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    add-int v7, v1, v3

    invoke-virtual {v6, v3}, Lcom/android/settings/wifi/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$3100(Lcom/android/settings/wifi/dslv/DragSortListView;II)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 3204
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "</ShuffleEdges>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3206
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "</DSLVState>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3207
    iget v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mNumInBuffer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mNumInBuffer:I

    .line 3209
    iget v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mNumInBuffer:I

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_5

    .line 3210
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->flush()V

    .line 3211
    iput v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mNumInBuffer:I

    :cond_5
    return-void
.end method

.method public flush()V
    .locals 5

    .line 3216
    iget-boolean v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mTracking:Z

    if-nez v0, :cond_0

    return-void

    .line 3223
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mNumFlushes:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 3226
    :goto_0
    new-instance v3, Ljava/io/FileWriter;

    iget-object v4, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mFile:Ljava/io/File;

    invoke-direct {v3, v4, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 3228
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 3229
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3231
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V

    .line 3232
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    .line 3234
    iget v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mNumFlushes:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mNumFlushes:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public startTracking()V
    .locals 2

    .line 3156
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "<DSLVStates>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 3157
    iput v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mNumFlushes:I

    const/4 v0, 0x1

    .line 3158
    iput-boolean v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mTracking:Z

    return-void
.end method

.method public stopTracking()V
    .locals 2

    .line 3241
    iget-boolean v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mTracking:Z

    if-eqz v0, :cond_0

    .line 3242
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "</DSLVStates>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3243
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->flush()V

    const/4 v0, 0x0

    .line 3244
    iput-boolean v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->mTracking:Z

    :cond_0
    return-void
.end method
