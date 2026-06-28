.class Lcom/android/settings/wifi/dslv/DragSortListView$1;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Lcom/android/settings/wifi/dslv/DragSortListView$DragScrollProfile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/dslv/DragSortListView;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/dslv/DragSortListView;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$1;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpeed(FJ)F
    .locals 0

    .line 286
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$1;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$000(Lcom/android/settings/wifi/dslv/DragSortListView;)F

    move-result p0

    mul-float/2addr p0, p1

    return p0
.end method
